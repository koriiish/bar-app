//
//  User.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
import SwiftUI

//MARK: - Model for base user
struct User: Identifiable {
    var id: String = UUID().uuidString
    let name: String
    let avatar: String
    
    init(name: String, avatar: String) {
        self.name = name
        self.avatar = avatar
    }
}
