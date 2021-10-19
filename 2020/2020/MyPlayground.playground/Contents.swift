import UIKit

// 3
var numbers: [Int] = [1, 2, 3, 4, 5]
var numbers2: Array<Int> = [1, 2, 3, 4, 5]
Array.init(repeating: 5, count: 7)
print(numbers2)
var num: [Int] = [2, 5, 8]
var num1: [Int] = [4, 6, 3]
var numSumm: [Int] = []
num.insert(7, at: 3)
num.remove(at: 0)
var i = 0
var largest = num[0]
var small = num[0]
numSumm = num + num1


//4
while i < num.count{

    if (num[i] > largest) {
        largest = num[i]
    }
    if (num[i] < small) {
        small = num[i]
    }
    i = i + 1
}
print("Max \(largest)")
print("Min \(small)")
print(largest - small)

//5
var massiv: [Int] = []
massiv.append(1)
massiv.insert(2, at: 1)
var ArrayForSum1: [Int] = [2, 4, 6, 8, 10]
var ArrayForSum2: [Int] = [1, 3, 5, 7, 9]
var ResultOfSum: [Int] = ArrayForSum1 + ArrayForSum2


//6
var array = [7, 5, 2]
array[1] = 9
array[2] = array[1] + array[2]
array[2]
print(array[2])

//7
var names: Array<String> = ["Danil", "Semen", "Victor", "Artem"]
var greeting = ""
for (index, items) in names.enumerated() {
    if index % 2 == 0 {
        greeting += "Go right, \(items) \n"
    }
    else {
        greeting += "Go left, \(items) \n"
    }
}

//8
//Сеты в отличии от массивов не сохраняют порядок в котором их добавили и не могут хранить в себе одинаковые элементы

//9
let myEmoji: Set = ["😂", "🎊", "🕺", "🚀"]
let wifeEmoji: Set = ["🎸", "😂", "🎊", "🦋"]

myEmoji.intersection(wifeEmoji) // {"🎊", "😂"}
myEmoji.symmetricDifference(wifeEmoji) // {"🕺", "🎸", "🦋", "🚀"}
myEmoji.union(wifeEmoji) // {"🕺", "🎸", "🎊", "🦋", "😂", "🚀"}
myEmoji.subtracting(wifeEmoji) // {"🕺", "🚀"}

//10
//Сеты можно использовать в приложениях для финансового учета. Массивы можно использовать в приложениях для списка покупок. Словари можно использовать в приложениях для поиска страны производителя автомобиля по его марке и модели.

//11
let number = 5
let power = 3
var answer = number
for _ in 1..<power {
    answer *= number
    print(answer)
}

//12
let mood = 7
var result1 = ""
if mood < 4 {
    result1 = "so bad"
}
else if mood < 8{
    result1 = "it's ok"
}
else if mood <= 10{
    result1 = "good"
}
print(result1)

var result = ""
switch mood {
case 0...3: result = "so bad"
case 4...7: result = "it's ok"
case 8...10: result = "good"
default: result = "all good"

}
print(result)









