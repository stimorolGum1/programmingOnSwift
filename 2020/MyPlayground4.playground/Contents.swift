import UIKit

//task3
class Chest {
    var slots: Int = 0
    
    init(slots: Int) {
        self.slots = slots
    }
}

class Axe: Chest {
    var health: Int = 0
    var enchant: Int = 0
    
    init(health: Int, enchant: Int) {
        super.init(slots: 1)
        self.health = health
        self.enchant = enchant
    }
}

class Sword: Chest {
    var health: Int = 0
    var enchant: Int = 0
    
    init(health: Int, enchant: Int) {
        super.init(slots: 2)
        self.health = health
        self.enchant = enchant
    }
}

class Potion: Chest {
    var health: Int = 0
    var enchant: Int = 0
    init(health: Int, enchant: Int) {
        super.init(slots: 3)
        self.health = health
        self.enchant = enchant
    }
}

class Sheld: Chest {
    var health: Int = 0
    var protect: Int = 0
    var enchant: Int = 0
    init(health: Int, enchant: Int, protect: Int) {
        super.init(slots: 4)
        self.health = health
        self.enchant = enchant
        self.protect = protect
    }
}


var axe = Axe(health: 4, enchant: 5)
var sword = Sword(health: 4, enchant: 5)
var poition = Potion(health: 4, enchant: 5)
var sheld = Sheld(health: 7, enchant: 4, protect: 3)



protocol DiscribeConfiguration {
    var name: String { get set }
    
}

class Cars {
    
}

class Models: Cars, DiscribeConfiguration {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Configuration {
    var name: String
    var price: Int
    var colour: String
    var Engine: Double
    
}

var toyotaChaser = Models (name: "Toyota Chaser")
var avante = Configuration (name: "Avante", price: 250000, colour: "white", Engine: 2.0)
var tourer_S = Configuration (name: "Tourer S", price: 300000, colour: "black", Engine: 2.5)
var tourer_V = Configuration (name: "Tourer V", price: 500000, colour: "black", Engine: 3.0)

var toyotaMark2 = Models (name: "Toyota Mark 2")
var grande = Configuration (name: "Grande", price: 200000, colour: "White", Engine: 1.8)
var grande_G = Configuration (name: "Grande G", price: 250000, colour: "Black", Engine: 2.0)
var Grande_Four = Configuration (name: "Grande Four", price: 300000, colour: "White", Engine: 2.0)

var toyotaCresta = Models (name: "Toyota Cresta")
var superLucent = Configuration (name: "Super lucent", price: 200000, colour: "White", Engine: 2.5)
var exceed_G = Configuration (name: "Exceed G", price: 250000, colour: "Black", Engine: 3.0)
var roulant_G = Configuration (name: "Roulant G", price: 500000, colour: "White", Engine: 3.0)



class Map {

}

class Players: Map {
    var posX: Int = 0
    var posY: Int = 0
    var health: Int = 100
    
    init(posX: Int, posY: Int, health: Int) {
        self.posX = posX
        self.posY = posY
        self.health = health
    }
    func move(posY: Int, posX: Int) -> (posY: Int, posX: Int) {
        return (posY, posX)
    }
}

class Monsters: Map {
    var posX: Int = 0
    var posY: Int = 0
    var health: Int = 100
    
    init(posX: Int, posY: Int, health: Int) {
        self.posX = posX
        self.posY = posY
        self.health = health
    }
    func move(posY: Int, posX: Int) -> (posY: Int, posX: Int) {
        return (posY, posX)
    }
}

class Tree: Map {
    var posX: Int = 0
    var posY: Int = 0
    
    init(posX: Int, posY: Int) {
        self.posX = posX
        self.posY = posY
    }
}
class Loot : Map {
    var posX: Int = 0
    var posY: Int = 0
        
    init(posX: Int, posY: Int) {
        self.posX = posX
        self.posY = posY
    }
}
var player = Players (posX: 0, posY: 0, health: 50)
player.move(posY: 5, posX: 3)
    
var monster = Monsters (posX: 0, posY: 0, health: 100)
monster.move(posY: 6, posX: 6)
monster.move(posY: 7, posX: 5)
var tree = Tree (posX: 3, posY: 8)

var loot = Loot (posX: 7, posY: 9)



//task4


protocol A{

    func a()

}


protocol B{

    func b()

}


extension B{

    func b(){

        print("extB")

    }

}


class C: A{

    func a() {

        print("A")

    }

    

    func c(){

        print("C")

    }

}


class D: C, B{

    func b() {

        print("B")

    }

    func d(){

        print("D")

    }

}



let v1: A = D()

      v1.a()

let v2: B = C() // вызывает ошибку так как класс С не соответсвует протоколу B

      v2.c() //функции С нет в протоколе B

let v3: C = D()

      v3.d() // в протоколе B нет функции d

let v4: D = D()

      v4.a()

