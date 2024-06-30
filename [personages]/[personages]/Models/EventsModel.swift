//
//  EventsModel.swift
//  [personages]
//
//  Created by Карина Дьячина on 28.06.24.
//

import Foundation
import SwiftUI

struct EventsModel: Identifiable {
    let id: Int
    let movie: String
    let date: String
    let description: String
    
    init(id: Int, movie: String, date: String, description: String) {
        self.id = id
        self.movie = movie
        self.date = date
        self.description =  description
    }
}
