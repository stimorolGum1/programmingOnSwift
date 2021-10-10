import UIKit

//1
var varstring: String = "Hello, Skillbox"
print(varstring)

//2
let letstring: String = "Hello, Skillbox"
print(letstring)

//3
var num: Double = 0.5
print(num)

//4
var swiftString: String? = "Swift"
print(swiftString ?? "Пустая переменная")
print(swiftString!)

//Дополнительные способы
func swiftStr() {
    guard let swiftString = swiftString else {
        return
    }
    print(swiftString)
}
swiftStr()

if let swiftString = swiftString {   print(swiftString) }

//5
var sum = 10 + 0.5
print(sum)

