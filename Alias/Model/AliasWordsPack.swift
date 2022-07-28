//
//  AliasWordsPack.swift
//  Alias
//
//  Created by Дмитрий Х on 28.07.22.
//

import Foundation

typealias Word = String

struct AliasWordsPack {
    let title: String        // Название категории
    let words: [Word]     // Список слов в Категории
}
extension AliasWordsPack {
    static func getAliasWordsCategories() -> [AliasWordsPack] {
        // логика
        let words = [
            
            // по 40 слов в каждой из 4-х категорий.
            
            AliasWordsPack(title: "Животные",
                           words: [
                            "Осел",
                            "Жираф",
                            "Бегемот",
                            "Барсук",
                            "Броненосец",
                            "Альпака",
                            "Панда",
                            "Вомбат",
                            "Фенек",
                            "Морская свинка",
                            "Сурикат",
                            "Ленивец",
                            "Лемур",
                            "Коала",
                            "Выдра",
                            "Кошка",
                            "Капибара",
                            "Гепард",
                            "Лев",
                            "Скорпион",
                            "Попугай",
                            "Мышь",
                            "Суслик",
                            "Коза",
                            "Крот",
                            "Воробей",
                            "Орёл",
                            "Жираф",
                            "Шимпанзе",
                            "Жучок",
                            "Лягушка",
                            "Кузнечик",
                            "Свинья",
                            "Корова",
                            "Осёл",
                            "Бабочка",
                            "Сова",
                            "Человек",
                            "Белка",
                            "Утка"
                           ]),
            
            AliasWordsPack(title: "Места",
                           words: [
                            "Кухня",
                            "Рим",
                            "Площадь",
                            "Ресторан",
                            "Театр",
                            "Парк",
                            "Сквер",
                            "Газон",
                            "Москва",
                            "Санкт-Петербург",
                            "Омск",
                            "Сибирь",
                            "Карелия",
                            "Франция",
                            "Франкфурт",
                            "Сидней",
                            "Оттава",
                            "Ташкент",
                            "Ашхабад",
                            "Нью-Дели",
                            "Будапешт",
                            "Поле",
                            "Лес",
                            "Пекарня",
                            "Ванна",
                            "Парковка",
                            "Дача",
                            "Супермаркет",
                            "Аллея",
                            "Сочи",
                            "Пристань",
                            "Набережная",
                            "Отмель",
                            "Кузня",
                            "Колесо обозрения",
                            "Мельница",
                            "Пивоварня",
                            "Выборг",
                            "Берн",
                            "Самара"
                           ]),
            
            AliasWordsPack(title: "Напитки",
                           words: [
                            "Шампанское",
                            "Просекко",
                            "Вода",
                            "Квас",
                            "Сидр",
                            "Пиво",
                            "Джин",
                            "Ликёр",
                            "Каркаде",
                            "Щербет",
                            "Чай",
                            "Кофе",
                            "Какао",
                            "Массала",
                            "Тархун",
                            "Сок",
                            "Виски",
                            "Кумыс",
                            "Айран",
                            "Гоголь-моголь",
                            "Аоджиру",
                            "Фраппе",
                            "Матэ",
                            "Сбитень",
                            "Ласси",
                            "Пунш",
                            "Минералка",
                            "Маргарита",
                            "Смузи",
                            "Глинтвейн",
                            "Нектар",
                            "Лимонад",
                            "Глясе",
                            "Фанта",
                            "Кока-кола",
                            "Узвар",
                            "Компот",
                            "Капучино",
                            "Эспрессо",
                            "Байкал",
                           ]),
            
            AliasWordsPack(title: "Эмоции",
                           words: [
                            "Безразличие",
                            "Беспомощность",
                            "Бессилие",
                            "Вдохновение",
                            "Вина",
                            "Волнение",
                            "Воодушевление",
                            "Восторг",
                            "Восхищение",
                            "Высокомерие",
                            "Гнев",
                            "Горе",
                            "Грусть",
                            "Жалость",
                            "Забота",
                            "Застенчивость",
                            "Злость",
                            "Ирония",
                            "Испуг",
                            "Любопытство",
                            "Негодование",
                            "Нежность",
                            "Нетерпение",
                            "Обескураженность",
                            "Обида",
                            "Отчаяние",
                            "Печаль",
                            "Радость",
                            "Раздражение",
                            "Скука",
                            "Смущение",
                            "Сожаление",
                            "Спокойствие",
                            "Страдание",
                            "Страх",
                            "Стыд",
                            "Тревога",
                            "Удивление",
                            "Удовольствие",
                            "Умиротворение"
                           ])
        ]
        return words
    }
}
/*
extension String {
    // Get the filename from a String
    func fileName() -> String {
        return URL(fileURLWithPath: self).deletingPathExtension().lastPathComponent
    }
    
    // Get the file extension from a String
    func fileExtension() -> String {
        return URL(fileURLWithPath: self).pathExtension
    }
}

func readCSV(inputFile: String, separator: String) -> [String] {
    // Split the file name
    let fileExtension = inputFile.fileExtension()
    let fileName = inputFile.fileName()
    
    //Get the file URL
    let fileURL = try! FileManager.default.url(for: .desktopDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
    
    let inputFile = fileURL.appendingPathComponent(fileName).appendingPathExtension(fileExtension)
    // Get Data
    do {
        let savedData = try String(contentsOf: inputFile)
        return savedData.components(separatedBy: separator)
    } catch {
        return ["Error file couldn't be found"]
    }
}

var myData = readCSV(inputFile: "animals_words_.csv", separator: ",")
///Users/dmitry4h/iOS dev/Alias/Alias/Model

import Ali
*/
