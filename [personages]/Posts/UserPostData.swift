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
        [
//            PostModel(user: userChief, title: <#T##String#>, text: <#T##String#>, image: "img-post10", time: "29.06 20:00"),
//            PostModel(user: userChief, title: <#T##String#>, text: <#T##String#>, image: "img-post9", time: "25.06 13:12"),
            PostModel(user: userBar, title: "Coming soon", text: "Вы ждете наш мерч? Шеф уже тестирует на себе.", image: "img-post8", time: "21.06 15:05"),
            PostModel(user: userGdeHodil, title: "Классический чизбургер", text: "Шеф показывает чизбуршер к кинопоказу. Не забудь забронивать себе билет.", image: "img-post7", time: "18.06 10:56"),
            PostModel(user: userBar, title: "Нисуаз от Шефа", text: "Если мы будем говорить до бесконечности, что это вкусно, вы придете?", image: "img-post6", time: "13.06 19:22"),
            PostModel(user: userChief, title: "Пате и бриошь", text: "Вечная классика. Стараемся для вас днем и ночью.", image: "img-post5", time: "11.06 03:49"),
            PostModel(user: userGdeHodil, title: "Не знаю, что это", text: "Но на вкус просто сказка. Скоро в [PERSONAGES].", image: "img-post4", time: "09.06 21:37"),
            PostModel(user: userBar, title: "Лучше в жизни не пробовал...", text: "Новое карпаччо идеально сочетается с коктейлем «Форест Гамп».", image: "img-post3", time: "07.06 22:43"),
            PostModel(user: userChief, title: "Приоткрываем завесу", text: "Доводим до идеала и ждем в гости. А сейчас ждем вас на коктейли и кино-ужины!", image: "img-post2", time: "04.06 23:19"),
            PostModel(user: userGdeHodil, title: "Creme de Paris", text: "Хей, ребята! Запускаем новое меню, следите за обновлениями.", image: "img-post1", time: "1.06 17:41")
        ]
        
//        let post1 = PostModel(user: userGdeHodil, title: "Creme de Paris", text: "Хей, ребята! Запускаем новое меню, следите за обновлениями.", image: "img-post1", time: "13.05")
//        
//        let post2 = PostModel(user: userChief, title: "", text: "пост 2", image: "gs://personages-app.appspot.com/IMG_2697.jpeg", time: "9.05")
//        
//        let post3 = PostModel(user: userBar, title: "пост 3", text: "пост 3", image: "gs://personages-app.appspot.com/IMG_2697.jpeg", time: "1.05")
//        
//        return [post1, post2, post3]
    }
    
}
