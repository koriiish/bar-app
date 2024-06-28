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
    static let userBar      =   User(name: "Pour man", avatar: "avatar")
    
    
    static func posts() -> [PostModel] {
        let post1 = PostModel(user: userGdeHodil, title: "Creme de Paris", text: "Хей, ребята! Запускаем новое меню, следите за обновлениями.", image: "img-post1", time: "13.05")
        
        let post2 = PostModel(user: userChief, title: "", text: "пост 2", image: "gs://personages-app.appspot.com/IMG_2697.jpeg", time: "9.05")
        
        let post3 = PostModel(user: userBar, title: "пост 3", text: "пост 3", image: "gs://personages-app.appspot.com/IMG_2697.jpeg", time: "1.05")
        
        return [post1, post2, post3]
    }
    
}
