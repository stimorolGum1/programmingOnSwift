import UIKit

class ClassUser1{
    var name: String
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
    var name: String
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
user1.name = "Anton"

let user2 = ClassUser2(name: "Nikita")
user2.name = "Anton"

var user3 = StructUser1(name: "Nikita")
user3.name = "Anton"

var user4 = StructUser2(name: "Nikita")
user4.name = "Anton"

var user5 = ClassUser1(name: "Nikita")
user5.name = "Anton"

var user6 = ClassUser2(name: "Nikita")
user6.name = "Anton"

var user7 = StructUser1(name: "Nikita")
user7.name = "Anton"

var user8 = StructUser2(name: "Nikita")
user8.name = "Anton"
