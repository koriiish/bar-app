//
//  BackgroundView.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
import SwiftUI

struct BackgroundView: View {
    var body: some View {
        @Environment(\.colorScheme)
        var currentMode
        
        Color.secondMain.ignoresSafeArea()
            .opacity(0.6)
    }
}

#Preview {
    BackgroundView()
}
