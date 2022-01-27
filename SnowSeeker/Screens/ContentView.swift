//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Heath Fashina on 2022-01-22.
//

import SwiftUI

struct ContentView: View {
    let resorts: [Resort] = Bundle.main.decode("resorts.json")
    
    @StateObject var favourites = Favourites()
    @State private var searchText = ""
    @State private var sortBy: SortOrder = .defaultOrder
    @State private var showingConfirmDialog = false
    
    enum SortOrder: String {
        case defaultOrder
        case alphabeticalOrder
        case countryOrder
    }
    
    var body: some View {
        NavigationView {
            List(filteredResorts) { resort in
                NavigationLink {
                    ResortScreen(resort: resort)
                } label: {
                    HStack {
                        Image(resort.country)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 25)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(.black, lineWidth: 1)
                            )
                        
                        VStack(alignment: .leading) {
                            Text(resort.name)
                                .font(.headline)
                            Text("\(resort.runs) runs")
                                .foregroundColor(.secondary)
                        }
                        
                        if favourites.contains(resort) {
                            Spacer()
                            
                            Image(systemName: "heart.fill")
                                .accessibilityLabel("This is a favourite resort")
                                .foregroundColor(.red)
                        }
                    }
                }
            }
            .confirmationDialog("Sort By:", isPresented: $showingConfirmDialog, titleVisibility: .visible) {
                Button("Default") {
                    sortBy = .defaultOrder
                }
                
                Button("Alphabetically") {
                    sortBy = .alphabeticalOrder
                }
                
                Button("Country") {
                    sortBy = .countryOrder
                }
            }
            .navigationTitle("Resorts")
            .searchable(text: $searchText, prompt: "Search for a resort")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Sort") {
                        showingConfirmDialog = true
                    }
                }
            }
            
            
            WelcomeScreen()
        }
        .environmentObject(favourites)
        .phoneOnlyNavigationView()
    }
    
    var filteredResorts: [Resort] {
        guard !resorts.isEmpty else {
            return []
        }
        
        var sortedResorts = [Resort]()
        
        switch sortBy {
        case .defaultOrder:
            sortedResorts = resorts
        case .alphabeticalOrder:
            sortedResorts = resorts.sorted(by: { $0.name < $1.name})
        case .countryOrder:
            sortedResorts = resorts.sorted(by: { $0.country < $1.country})
        }
        
        if searchText.isEmpty {
            return sortedResorts
        } else {
            return sortedResorts.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
