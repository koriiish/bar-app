//
//  ViewCoordinator.swift
//  [personages]
//
//  Created by Карина Дьячина on 30.06.24.
//

import Foundation
import SwiftUI

struct ViewCoordinator: View {
    
    @State private var isActive = false
    @State private var isSignedIn = true
    @ObservedObject var viewModel = FirebaseAuthManager()
    
    var body: some View {
        if isActive {
            NavigationView {
                if viewModel.isSignedIn == true {
                    AccountView(firebase: FirebaseAuthManager(), quotes: QuoteList.quotes())
                    
                } else {
                    if isSignedIn {
                        ContentView()
                        
                    } else {
                        SignUpView(firebase: FirebaseAuthManager())
                    }
                }
            }
        } else {
            LaunchView(isActive: $isActive)
        }
    }
    
}

#Preview {
    ViewCoordinator()
}
