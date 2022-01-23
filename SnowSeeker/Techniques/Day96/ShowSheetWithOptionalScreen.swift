//
//  ShowSheetWithOptionalScreen.swift
//  SnowSeeker
//
//  Created by Heath Fashina on 2022-01-22.
//

import SwiftUI

struct User: Identifiable {
    var id = "Taylor Swift"
}

struct ShowSheetWithOptionalScreen: View {
    @State private var selectedUser: User? = nil
    @State private var isShowingUser = false
    
    var body: some View {
        Text("Tap for user")
            .onTapGesture {
                selectedUser = User()
                isShowingUser = true
            }
            .alert("Welcome", isPresented: $isShowingUser, presenting: selectedUser) { user in
                Button(user.id) { }
            }
        // Alert with default button
        /*
            .alert("Welcome", isPresented: $isShowingUser) { }
         
         */
        
        // For using a sheet
        /*
        Text("Tap for user")
            .onTapGesture {
                selectedUser = User()
            }
            .sheet(item: $selectedUser) { user in
                Text(user.id)
            }
         */
    }
}

struct ShowSheetWithOptionalScreen_Previews: PreviewProvider {
    static var previews: some View {
        ShowSheetWithOptionalScreen()
    }
}
