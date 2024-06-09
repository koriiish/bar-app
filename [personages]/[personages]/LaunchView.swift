//
//  LaunchView.swift
//  [personages]
//
//  Created by Карина Дьячина on 9.06.24.
//

import Foundation
import SwiftUI

struct LaunchView: View {
    @Binding var isActive: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(Color.accentColor)
            Text("[PERSONAGES]")
                .font(.largeTitle)
                .padding(.bottom, 70)
                .foregroundStyle(.white)
            Text("the art of bar & cinema")
                .foregroundStyle(.white)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    LaunchView(isActive: .constant(true))
}
