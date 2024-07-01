//
//  EventsView.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
import SwiftUI

//MARK: - Events SetUp
struct EventsView: View {
    
    @State private var events = EventsList.getEvent()
    
    var body: some View {
        ZStack{
            BackgroundView()
            VStack {
                Text("[Upcoming events]")
                    .font(.title)
                    .bold()
                    .padding(.leading, -100.0)
                    .foregroundStyle(.accent)
                Table(events) {
                    TableColumn("") { event in
                        TableViewCell(event: event)
                    }
                }
            }
        }
    }
}
#Preview {
    EventsView()
}
