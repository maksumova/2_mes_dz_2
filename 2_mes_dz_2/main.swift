//
//  main.swift
//  2_mes_dz_2
//
//  Created by Nika Abdulakhatova on 24.12.2022.
//

import Foundation

//print("Hello, World!")
//
////2 месяц. ДЗ #2 Наследование
////
////#1. Создать класс Магазин
////Свойства: Название, Площадь, Расположение, Часы работы, массив с товарами
////Создать класс Товар
////Свойства: Название товара, кол-во. Цена товара
////После чего путём наследования от класса Магазин создать следующие классы: Магазин автозапчастей, Магазин одежды и заполнить их соответствующими параметрами
////
////
////
////Так же в конце должен быть метод, который будет отображать следующую информацию:
////
////Название магазина. Площадь.
////Расположение. Часы работы.
////Наименование товара. Кол-во товара. Цена товара (Если у вас два и более одинаковых по названию товаров - соединить)
//
//
//
class Market{
    var name: String
    var area: Int
    var location: String
    var workTime: String
    var products = [Product]()
    init(name: String, area: Int, location: String, workTime: String) {
        self.name = name
        self.area = area
        self.location = location
        self.workTime = workTime
    }
    func showInfo(){
        print("\(name). \(area). \(location). \(workTime)")

    }
}


class Product{
    var name: String
    var price: Int
    var quantity: Int
    init( name: String,  price: Int, quantity: Int) {
        self.price = price
        self.name = name
        self.quantity = quantity
    }
    func showInfo() {
        print ("name: \(name). price: \(price). quatity: \(quantity)")

    }
}

class Lamoda: Market{
    var weekend: String
    var delivery: String
    init(name: String, area: Int, location: String, workTime: String, weekend: String, delivery: String) {
        self.weekend = weekend
        self.delivery = delivery
        super.init(name: name, area: area, location: location, workTime: workTime)
    }
    override func showInfo() {
        print ("market name:\(name). Area: \(area). location: \(location). workTime\(workTime).  weekend: \(weekend).  delivery: \(delivery)")
    }
}

class Spares: Market{
    var weekend: String
    var delivery: String
    init(name: String, area: Int, location: String, workTime: String, weekend: String, delivery: String) {
        self.weekend = weekend
        self.delivery = delivery
        super.init(name: name, area: area, location: location, workTime: workTime)
    }
    override func showInfo() {
        print ("market name:\(name). Area: \(area). location: \(location). workTime\(workTime).  weekend: \(weekend).  delivery: \(delivery)")
    }

}


var dress = Lamoda(name: "dress", area: 100, location: "Moscow", workTime: "10:00-20:00", weekend: "sunday", delivery:"Yes")
var oil = Product(name: "Oil", price: 200, quantity: 20)
var spares = Spares(name: "vulcan", area: 200, location: "Bishkek", workTime: "10:00-20:00", weekend: "sunday", delivery: "yes")

spares.showInfo()
oil.showInfo()
dress.showInfo()
