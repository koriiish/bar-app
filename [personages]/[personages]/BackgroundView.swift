//
//  BackgroundView.swift
//  [personages]
//
//  Created by Карина Дьячина on 9.06.24.
//

import Foundation
import SwiftUI

struct BackgroundView: View {
    var body: some View {
        @Environment(\.colorScheme)
        var currentMode
        
        ZStack {
            Color.secondMain.ignoresSafeArea()
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem(), GridItem(), GridItem(), GridItem(), GridItem()]) {
                ForEach(0..<100) { _ in
                    Image(systemName: "popcorn")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.accent)
                        .frame(width: 35, height: 35)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    BackgroundView()
}
