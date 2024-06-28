//
//  EventsView.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
import SwiftUI

struct EventsView: View {
    
    @State private var events = EventsList.getEvent()
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    private var isCompact: Bool {
        verticalSizeClass == .compact
    }
    
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
                            VStack {
                                Text(event.movie)
                                    .multilineTextAlignment(.leading)
                                
                                if isCompact == false {
                                    Text(event.date)
                                        .multilineTextAlignment(.leading)
                                    
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }
                    }
                    //  .foregroundStyle(.accent)
                }
            }
        }
}
#Preview {
    EventsView()
}
