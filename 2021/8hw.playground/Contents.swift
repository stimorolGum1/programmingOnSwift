import UIKit

//1 и 2
struct Person {
    var name: String
    var age: Int

 
    mutating func getAgeComparisonString(_ p: Person) {
        if age < p.age {
            print("\(p.name) старше меня")
        }
        else if age > p.age {
            print("\(p.name) моложе меня")
        }
        else if age == p.age {
            print("\(p.name) такого же возраста, как я")
        }
    }
    
    func info() -> String{
        let a = ("\(self.name), \(self.age) года/лет")
        return a
    }
    
    lazy var nameAge: String = info()
}

var p1 = Person(name: "Антон", age: 24)

var p2 = Person(name: "Андрей", age: 36)

var p3 = Person(name: "Ольга", age: 24)

p1.getAgeComparisonString(p2)

p2.getAgeComparisonString(p1)

p1.getAgeComparisonString(p3)

p1 = Person(name: "Антон", age: 24)
p1.info()

p2 = Person(name: "Андрей", age: 36)
p2.info()

p3 = Person(name: "Ольга", age: 24)
p3.info()

//3, 4 и 5
class Hero {
    private var lifeCount = 100
    
    func hit() {
        print("Попадание, \(self.lifeCount - 5) здоровья")
        }
    
    init(lifeCount: Int) {
        self.lifeCount = lifeCount
    }
    
    var isLive: Bool {
        if self.lifeCount > 0 {
            return true
        }
        else {
            return false
            }
        }
    }
    
var hero = Hero(lifeCount: 100)
hero.hit()
hero.isLive

//6
class SuperHero: Hero {
    var lifeCount = 1000
    
    override func hit() {
        print("Не получаю повреждений")
    }
    
    override init(lifeCount: Int) {
        
        self.lifeCount = lifeCount
        super.init(lifeCount: lifeCount)
    }
}

var superhero = SuperHero(lifeCount: 1000)
superhero.hit()
