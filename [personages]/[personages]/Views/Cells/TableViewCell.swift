//
//  TableViewCell.swift
//  [personages]
//
//  Created by Карина Дьячина on 30.06.24.
//

import Foundation
import SwiftUI

struct TableViewCell: View {
    @State var event: EventsModel
    @State private var isShowingEvent = false
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    private var isCompact: Bool {
        verticalSizeClass == .compact
    }
    
    var body: some View {
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
        .sheet(isPresented: $isShowingEvent, content: {
            EventsInfoView(event: event)
        })
        .onTapGesture {
            isShowingEvent = true
        }
    }
}

#Preview {
    TableViewCell(event: EventsModel(id: "0", movie: "movie", date: "date", description: "description"))
}
