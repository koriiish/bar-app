//
//  QuoteModel.swift
//  [personages]
//
//  Created by Карина Дьячина on 22.06.24.
//

import Foundation

struct QuoteModel {
    let text: String
    let author: String
    
    init(text: String, author: String) {
        self.text = text
        self.author = author
    }
}