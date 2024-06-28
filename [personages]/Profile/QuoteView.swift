//
//  QuoteView.swift
//  [personages]
//
//  Created by Карина Дьячина on 22.06.24.
//

import Foundation
import SwiftUI

struct QuoteView: View {
    let quote: QuoteModel
    
    var body: some View {
        ZStack{
               VStack(alignment: .leading) {
                    Text(quote.text).font(.body).lineLimit(nil)
                        .padding(.bottom, 20)
                    Text(quote.author).bold()
                }
                .padding(.leading, 15)
                .padding(.trailing, 15)
        }
    }
}

#Preview {
    QuoteView(quote: QuoteList.quotes()[0])
}

