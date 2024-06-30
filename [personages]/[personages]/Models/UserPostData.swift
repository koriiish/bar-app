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
            PostModel(user: userGdeHodil, title: "Babe x [Personages]", text: "Спасибо вам, что пришли. Ждем следующий guest вместе с вами.", image: "img-post26", time: "31.06 14:39"),
            PostModel(user: userBar, title: "Уже готовим новый кинопоказ.", text: "Следите за новостями и бронируйте места.", image: "img-post27", time: "30.06 18:17"),
            PostModel(user: userBar, title: "Коктейльная карта", text: "Попробуй на вкус свои любимые фильмы.", image: "img-post24", time: "29.06 23:56"),
            PostModel(user: userChief, title: "Скорее запускай..", text: "И наслаждайся коктейлем.", image: "img-post22", time: "28.06 19:15"),
            PostModel(user: userGdeHodil, title: "", text: "Женя на смене  и ждет тебя в гости.", image: "img-post19", time: "27.06 18:32"),
            PostModel(user: userBar, title: "", text: "Сегодня на смене Игорь и Женя. Приходите поболтать. Смотрим на фоне «Зелёная книга» (2018 г.)", image: "img-post17", time: "26.06 20:28"),
            PostModel(user: userBar, title: "Babe x [Personages]", text: "Делимся как это было. А было круто. Оцените сами!", image: "img-post9", time: "25.06 13:12"),
            PostModel(user: userBar, title: "🌹", text: "Без слов все понятно.", image: "img-post16", time: "23.06 16:14"),
            PostModel(user: userGdeHodil, title: "Coming soon", text: "Вы ждете наш мерч? Шеф уже тестирует на себе.", image: "img-post8", time: "21.06 15:05"),
            PostModel(user: userBar, title: "Поторопись...", text: "Игорь уже смешивает тебе коктейль.", image: "img-post15", time: "20.06 11:31"),
            PostModel(user: userGdeHodil, title: "Классический чизбургер", text: "Шеф показывает чизбуршер к кинопоказу. Не забудь забронивать себе билет.", image: "img-post7", time: "18.06 10:56"),
            PostModel(user: userBar, title: "Мы любим пленку", text: "Подлядываем за вами 📸.", image: "img-post14", time: "15.06 19:38"),
            PostModel(user: userBar, title: "Нисуаз от Шефа", text: "Если мы будем говорить до бесконечности, что это вкусно, вы придете?", image: "img-post6", time: "13.06 19:22"),
            PostModel(user: userBar, title: "Бокалы готовы!", text: "Приходи, ждем только тебя.", image: "img-post13", time: "12.06 02:40"),
            PostModel(user: userChief, title: "Пате и бриошь", text: "Вечная классика. Стараемся для вас днем и ночью.", image: "img-post5", time: "11.06 03:49"),
            PostModel(user: userGdeHodil, title: "Не знаю, что это", text: "Но на вкус просто сказка. Скоро в [PERSONAGES].", image: "img-post4", time: "09.06 21:37"),
            PostModel(user: userBar, title: "FILM", text: "А у вас уже есть фотка здесь? Делитесь с нами фотокарточками.", image: "img-post12", time: "08.06 01:25"),
            PostModel(user: userBar, title: "Лучше в жизни не пробовал...", text: "Новое карпаччо идеально сочетается с коктейлем «Форест Гамп».", image: "img-post3", time: "07.06 22:43"),
            PostModel(user: userBar, title: "Лучшие из лучших", text: "Сегодня Стас на страже ваших бокалов.🥂", image: "img-post11", time: "05.06 17:12"),
            PostModel(user: userChief, title: "Приоткрываем завесу", text: "Доводим до идеала и ждем в гости. А сейчас ждем вас на коктейли и кино-ужины!", image: "img-post2", time: "04.06 23:19"),
            PostModel(user: userBar, title: "Даниэль на смене", text: "Заглядывай в гости. Сегодня я с вами до 03:00🍸.", image: "img-post10", time: "02.06 13:36"),
            PostModel(user: userGdeHodil, title: "Creme de Paris", text: "Хей, ребята! Запускаем новое меню, следите за обновлениями.", image: "img-post1", time: "1.06 17:41")
        ]
    }
    
}
