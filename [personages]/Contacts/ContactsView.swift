//
//  ContactsView.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
import SwiftUI

struct ContactsView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Text("[How to find us]")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color.accentColor)
                    .padding(.leading, -140.0)
                    .padding(.bottom)
                Text("Adress: Karla Marksa st, 33")
                    .bold()
                HStack {
                    Text("Our instagram:")
                        .bold()
                    Button {
                        let barInstagram = "personages.bar"
                        if let checkInstagram = URL(string: "instagram://\(barInstagram)") {
                            UIApplication.shared.canOpenURL(checkInstagram)
                        }
                    } label: {
                        Text("personages.bar")
                    }
                    .padding()
                }
                HStack {
                    Text("For collaboration:")
                        .bold()
                    Button {
                        let email = "gdehodil@gmail.com"
                        if let checkMail = URL(string: "mailto://\(email)") {
                            UIApplication.shared.open(checkMail)
                        }
                    } label: {
                        Text("gdehodil@gmail.com")
                    }
                }
                
                VStack {
                    MapView()
                }
                .padding(EdgeInsets(top: 50, leading: 20, bottom: 60, trailing: 20))
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 30, height: 30)))
            }
        }
    }
}

#Preview {
    ContactsView()
}
