//
//  BackgroundSignInView.swift
//  [personages]
//
//  Created by Карина Дьячина on 9.06.24.
//

import Foundation
import SwiftUI

struct BackgroundSignInView: View {
    var body: some View {
        @Environment(\.colorScheme)
        var currentMode
        
            ZStack {
                Color.secondMain.opacity(0.6)
                ZStack {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(0..<11) { _ in
                        Image(systemName:  "popcorn")
                            .renderingMode(.template)
                            .resizable()
                            .scaledToFit()
                            .foregroundStyle(.accent
                            )
                            .opacity(0.7)
                            .frame(width: 90, height: 90)
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    BackgroundSignInView()
}
