//
//  EventsInfoView.swift
//  [personages]
//
//  Created by Карина Дьячина on 29.06.24.
//

import Foundation
import SwiftUI

struct EventsInfoView: View {
    let event: EventsModel
    
    var body: some View {
        ZStack {
            BackgroundView()
               VStack(alignment: .leading) {
                   Text(event.movie).font(.title2).lineLimit(nil)
                       .bold()
                        .padding(.bottom, 20)
                   Text(event.description)
                }
                .padding(.leading, 15)
                .padding(.trailing, 15)
        }
    }
}

#Preview {
    EventsInfoView(event: EventsList.getEvent()[0])
}
