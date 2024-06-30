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
    @State private var isShowingEvent = true
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
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .foregroundStyle(.accent)
                                    .bold()
                                
                                if isCompact == false {
                                    Text(event.date)
                                        .multilineTextAlignment(.leading)
                                    
                                        .foregroundStyle(.secondary)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                }
                            }
                            //ячейка по тапу
                            .sheet(isPresented: $isShowingEvent, content: {
                                EventsInfoView(event: EventsModel(id: 1, movie: "", date: "", description: ""))
                            })
                            .gesture(
                                TapGesture()
                                    .onEnded { _ in
                                     
                                                })
                        }
                    
                    }
                }
            }
        }
}
#Preview {
    EventsView()
}
