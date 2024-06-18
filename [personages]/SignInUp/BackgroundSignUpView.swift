//
//  BackgroundSignUpView.swift
//  [personages]
//
//  Created by Карина Дьячина on 9.06.24.
//

import Foundation
import SwiftUI

struct BackgroundSignUpView: View {
    var body: some View {
        @Environment(\.colorScheme)
        var currentMode
        
        ZStack {
            BackgroundView()
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                ForEach(0..<11) { _ in
                    Image(systemName:  "movieclapper")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.accent
                        )
                        .opacity(0.7)
                        .frame(width: 100, height: 100)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    BackgroundSignUpView()
}
