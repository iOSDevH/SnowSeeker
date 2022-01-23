//
//  SearchableScreen.swift
//  SnowSeeker
//
//  Created by Heath Fashina on 2022-01-22.
//

import SwiftUI

struct SearchableScreen: View {
    @State private var searchText = ""
    let allNames = ["Subh", "Vina", "Melvin", "Stefanie"]
    
    var body: some View {
        NavigationView {
            List(filteredNames, id: \.self) { name in
                Text(name)
            }
            .searchable(text: $searchText, prompt: "Looking for something")
            .navigationTitle("Searching")
        }
    }
    
    var filteredNames: [String] {
        if searchText.isEmpty {
            return allNames
        } else {
            return allNames.filter { $0.localizedCaseInsensitiveContains(searchText)}
        }
    }
}

struct SearchableScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchableScreen()
    }
}
