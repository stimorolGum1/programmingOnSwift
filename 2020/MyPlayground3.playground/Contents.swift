import UIKit

//task2
struct Card {
    enum Masti: Character {
        case piki = "♠", chervi = "♡", bubni = "♢", trefi = "♣"
    }
    
    enum Rank: Int {
        case two = 2, three, four, five, six, seven, eight, nine, ten, valet, dama, tuz
    }
}
//task3, RAW значения могут быть типом String, Character, Int, Float

//task4
struct Circle {
    let radius: Int
    let square: Int
    let posX: Double
    let posY: Double
   
}

struct Rectangle {
    let sideA: Int
    let sideB: Int
    let square: Int
    let posX: Double
    let posY: Double
}

class Circle1 {
    let radius: Int
    let square: Int
    let posX: Double
    let posY: Double
    init(radius: Int, square: Int, posX: Double, posY: Double) {
        self.radius = radius
        self.square = square
        self.posX = posX
        self.posY = posY
    }
}

class Rectangle1 {
    let sideA: Int
    let sideB: Int
    let square: Int
    let posX: Double
    let posY: Double
    init(sideA: Int, sideB: Int, square: Int, posX: Double, posY: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.square = square
        self.posX = posX
        self.posY = posY
    }
}

//task5
class ClassUser1{
    var name: String  //name изменяется и должно быть var, вызовет ошибку так как name имеет тип let
    init(name: String) {
        self.name = name
    }
}

class ClassUser2{
    var name: String
    init(name: String) {
        self.name = name
    }
}

struct StructUser1{
    var name: String //name изменяется и должно быть var, вызовет ошибку так как name имеет тип let
    init(name: String) {
        self.name = name
    }
}

struct StructUser2{
    var name: String
    init(name: String) {
        self.name = name
    }
}

let user1 = ClassUser1(name: "Nikita")
user1.name = "Anton"                    // Так как name это let то мы не можем его изменить

let user2 = ClassUser2(name: "Nikita")
user2.name = "Anton"

var user3 = StructUser1(name: "Nikita") //тут долнжо быть var, так как name это let то мы не можем его изменить, экземпляр структуры должен быть let
user3.name = "Anton"

var user4 = StructUser2(name: "Nikita") // должно быть var, так как name это let то мы не можем его изменить, экземпляр структуры должен быть let
user4.name = "Anton"

var user5 = ClassUser1(name: "Nikita")
user5.name = "Anton"

var user6 = ClassUser2(name: "Nikita")
user6.name = "Anton"

var user7 = StructUser1(name: "Nikita")
user7.name = "Anton"

var user8 = StructUser2(name: "Nikita")
user8.name = "Anton"



//task6
class Auto {
    var model: String = "Toyota"
    var transmisson: String = "AT"
    var driveLine: String = "RWD"
    var engine: Double = 2.5
    var color: String = "white"
    
    init(model: String, color: String, driveLine: String) {
        self.model = model
        self.color = color
        self.driveLine = driveLine
        
    }
}


//task7

class Calc {
    
    var a: Int
    var b: Int
    
    static func subtraction(_ a: Int, _ b: Int) -> Int { return a - b }
    
    static func addition(_ a: Int, _ b: Int) -> Int { return a + b }
    
    static func divide(_ a: Int, _ b: Int) -> Int { return a / b }
    
    static func multiplie(_ a: Int, _ b: Int) -> Int { return a * b }
    
    init(a:Int, b:Int) {
            self.a = a
            self.b = b
    }
    
}

Calc.subtraction(4, 5)
Calc.addition(6, 7)
Calc.divide(8, 4)
Calc.multiplie(4, 8)
//task8, static используется для обозначения поля или метода как принадлежащего самому классу, а не экземпляру

//task9. Классы могут иметь наследников, а стукуры и enum не могут

//task10
struct Position{
   var posX:Int = 0
   var posY:Int = 0
}

enum compass{
    case north
    case east
    case west
    case south
}
 


func move (position: Position, direction: compass) -> Position{
    
    var coordinat = position
    
    switch direction{
    case .north:
        coordinat.posY += 1
    case .east:
        coordinat.posX += 1
    case .west:
        coordinat.posY -= 1
    case .south:
        coordinat.posY -= 1
     
    }
    return coordinat
}

var coord = Position(posX: 0, posY: 0)
coord = move(position: coord, direction: .north)
coord = move(position: coord, direction: .east)
coord = move(position: coord, direction: .north)
print (coord)




/*
Доп. задания
 
 Можно ли в enum хранить дополнительные данные? Можно. К примеру, можно хранить значения переменных
 
 В каких случаях лучше использовать класс, а в каких — структуру? Если не нужно использовать наследование, то стоит востользвоаться структурами, во всех остальных случая надо использвоать классы
 
 В каких случаях удобнее структурировать данные и функции в класс? Структурировать данные в класс удобнее если понадобится их удаление из памяти с помощью деструктора
 
 
 */
