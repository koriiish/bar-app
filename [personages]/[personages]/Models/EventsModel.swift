//
//  EventsModel.swift
//  [personages]
//
//  Created by Карина Дьячина on 28.06.24.
//

import Foundation
import SwiftUI

struct EventsModel: Identifiable {
    let id: String
    let movie: String
    let date: String
    let description: String
    
    init(id: String, movie: String, date: String, description: String) {
        self.id = id
        self.movie = movie
        self.date = date
        self.description =  description
    }
}
