//
//  AccountView.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
import SwiftUI

struct AccountView: View {
    
    @ObservedObject var firebase: FirebaseAuthManager
    @State var quotes: [QuoteModel]
    @State var newQuote = QuoteView(quote: QuoteModel(text: "", author: ""))

    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Text("Welcome, [PERSONAGE]")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.accent)
                    .padding(.vertical, 30)

                newQuote
                    .padding(.horizontal, 20)
                
                Button {
                    newQuote = QuoteView(quote: quotes.randomElement() ?? QuoteModel(text: "", author: ""))
                } label: {
                    Text("Quote of the day")
                }
                .padding(.leading, -162)
                .padding(.top, 30)
Spacer()
            }
            Button {
                
            } label: {
                Text("Merch (coming soon)")
            }
            .disabled(true)
            .padding(.leading, -160)
            .padding(.top, -40)
            
            Button {
                
            } label: {
                Text("Reservation (coming soon)")
            }
            .disabled(true)
            .padding(.leading, -120)
            .padding(.top, 10)
            
            Button {
                
            } label: {
                Text("Collaboration (coming soon)")
            }
            .disabled(true)
            .padding(.leading, -110)
            .padding(.top, 80)
            
            Button {
                firebase.logout()
                NavigationLink(destination: SignInView(firebase: FirebaseAuthManager())) {
                    Text ("Sign in")
                }
            } label: {
                Text("Log out")
            }
            .disabled(false)
            .padding(.leading, -161)
            .padding(.top, 145)
        }
    }
}

#Preview {
    AccountView(firebase: FirebaseAuthManager(), quotes: QuoteList.quotes())
}
