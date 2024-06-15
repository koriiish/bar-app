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
                    .padding(.vertical)
                HStack{
                    Text("Adress:")
                        .bold()
                    Text("Karla Marksa st, 33")
                }
                .padding(.leading, -135)
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
                    .padding(.vertical, 10)
                }
                .padding(.leading, -105.0)
                HStack {
                    Text("For collaboration:")
                        .bold()
                        .padding(.leading, -43)
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
                .padding(EdgeInsets(top: 30, leading: 20, bottom: 40, trailing: 20))
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 30, height: 30)))
            }
        }
    }
}

#Preview {
    ContactsView()
}
