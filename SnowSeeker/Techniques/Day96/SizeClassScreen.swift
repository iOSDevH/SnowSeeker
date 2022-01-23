//
//  SizeClassScreen.swift
//  SnowSeeker
//
//  Created by Heath Fashina on 2022-01-22.
//

import SwiftUI

struct SizeClassScreen: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        Group {
            if sizeClass == .compact {
                VStack(content: UserView.init)
            } else {
                HStack(content: UserView.init)
            }
        }
    }
}

struct SizeClassScreen_Previews: PreviewProvider {
    static var previews: some View {
        SizeClassScreen()
    }
}
