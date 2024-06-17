//
//  ContactsView.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
import SwiftUI

struct ContactsView: View {
    
    let barInstagram = "personages.bar"
    let barEmail = "gdehodil@gmail.com"
    
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
                .padding(.leading, -138)
                HStack {
                    Text(.init("Our instagram: [@\(barInstagram)](https://instagram.com/personages.bar)"))
                        .bold()
                    .padding(.vertical, 10)
                }
                .padding(.leading, -92.0)
                HStack {
                    Text(.init("For collaboration: [\(barEmail)](mailto://gdehodil@gmail.com)"))
                        .bold()
                        .padding(.leading, -43)
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
