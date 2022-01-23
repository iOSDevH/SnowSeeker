//
//  SideBySideScreen.swift
//  SnowSeeker
//
//  Created by Heath Fashina on 2022-01-22.
//

import SwiftUI

struct SideBySideScreen: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                Text("New Secondary")
            } label: {
                Text("Hello, world!")
                    .navigationTitle("Primary")
            }
            
            Text("Secondary")
            
            Text("Tertiary")
        }
    }
}

struct SideBySideScreen_Previews: PreviewProvider {
    static var previews: some View {
        SideBySideScreen()
    }
}
