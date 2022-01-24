//
//  WelcomeScreen.swift
//  SnowSeeker
//
//  Created by Heath Fashina on 2022-01-23.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        VStack {
            Text("Welcome to SnowSeeker!")
                .font(.largeTitle)
            
            Text("Please select a resort from the left-hand menu; swipe from the left edge to show it")
                .foregroundColor(.secondary)
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
