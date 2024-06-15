//
//  UserPostData.swift
//  [personages]
//
//  Created by Карина Дьячина on 15.06.24.
//

import Foundation
struct UserPostData {
    
    static let userGdeHodil     =   User(name: "Gde Hodil", avatar: "avatar")
    static let userChief   =   User(name: "Kitchen Chief", avatar: "avatar")
    static let userBar      =   User(name: "Bartender", avatar: "avatar")
    
    
    static func posts() -> [PostModel] {
        let post1 = PostModel(user: userGdeHodil, title: "пост 1", text: "пост 1", image: "gs://personages-app.appspot.com/IMG_2697.jpeg", time: "13.04")
        
        let post2 = PostModel(user: userChief, title: "пост 2", text: "пост 2", image: "gs://personages-app.appspot.com/IMG_2697.jpeg", time: "9.04")
        
        let post3 = PostModel(user: userBar, title: "пост 3", text: "пост 3", image: "gs://personages-app.appspot.com/IMG_2697.jpeg", time: "1.04")
        
        return [post1, post2, post3]
    }
    
}
