//
//  StackNavigationForPhones.swift
//  SnowSeeker
//
//  Created by Heath Fashina on 2022-01-23.
//

import SwiftUI

extension View {
    @ViewBuilder func phoneOnlyNavigationView() -> some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            self.navigationViewStyle(.stack)
        } else {
            self
        }
    }
}
