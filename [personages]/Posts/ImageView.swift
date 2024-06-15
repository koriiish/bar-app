//
//  ImageView.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
import SwiftUI

struct ImageView: View {
    
    @State
    var imageUrl: String
    
    var body: some View {
        Image(imageUrl)
            .scaledToFill()
            .frame(width: 120, height: 75, alignment: .center)
            .cornerRadius(8)
    }
}

#Preview {
    ImageView(imageUrl: "gs://personages-app.appspot.com/IMG_2697.jpeg")
}
