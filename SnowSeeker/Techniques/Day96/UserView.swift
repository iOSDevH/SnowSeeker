//
//  UserView.swift
//  SnowSeeker
//
//  Created by Heath Fashina on 2022-01-22.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        Group {
            Text("Name: Paul")
            Text("Country: England")
            Text("Pets: Luna and Arya")
        }
        .font(.title)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
