//
//  PostModel.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation

//MARK: - Model for post(blog)
struct PostModel: Identifiable  {
    var id: String = UUID().uuidString
    let user: User!
    let title: String
    let text: String
    let image: String
    let time: String
    
    init(user: User, title: String, text: String, image: String, time: String) {
        self.user =  user
        self.title = title
        self.text = text
        self.image = image
        self.time = time
    }
}

struct PostsResponse: Identifiable {
    var id: ObjectIdentifier
    let posts: [PostModel]
}
