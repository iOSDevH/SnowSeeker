//
//  GroupLayoutScreen.swift
//  SnowSeeker
//
//  Created by Heath Fashina on 2022-01-22.
//

import SwiftUI

struct GroupLayoutScreen: View {
    @State private var layoutVertically = false
    
    var body: some View {
        Group {
            if layoutVertically {
                VStack {
                    UserView()
                }
            } else {
                HStack {
                    UserView()
                }
            }
        }
        .onTapGesture {
            layoutVertically.toggle()
        }
    }
}

struct GroupLayoutScreen_Previews: PreviewProvider {
    static var previews: some View {
        GroupLayoutScreen()
    }
}
