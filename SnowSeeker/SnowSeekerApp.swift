//
//  SnowSeekerApp.swift
//  SnowSeeker
//
//  Created by Heath Fashina on 2022-01-22.
//

import SwiftUI

@main
struct SnowSeekerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                }
        }
    }
}
