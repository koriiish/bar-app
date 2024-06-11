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
            Color.secondMain.ignoresSafeArea()
                .opacity(0.6)
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                ForEach(0..<100) { _ in
                    Image(systemName:  "movieclapper")
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

#Preview {
    BackgroundSignUpView()
}
