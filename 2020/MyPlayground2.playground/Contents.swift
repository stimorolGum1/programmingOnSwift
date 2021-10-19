import UIKit

//2
//Да, в функции можно вызвать другую функцию
func compare(_ r1: Double, _ r2: Double) {
     
    func square(_ r: Double) -> Double {
        return r * r * 3.14
        
    }
     
    let s1 = square(r1)
    let s2 = square(r2)
     
    print("разница площадей:", (s1 - s2))
}
 
compare(16.0, 15.0)
//3

func task3(_ array3: [String]) -> String {
    var res = ""
    for i in array3 {
        if i != array3.last {
            res += i + ", "
        } else {
            res += i + ""
        }
    }
    return res
}
task3(["Москва", "Краснодар", "Омск", "Мурманск"])

//4 fixed
func task4(_ a: inout Int, _ b: inout Int) {
    let c = a
    a = b
    b = c
    a * a
    b * b
}

var IntA = 3
var IntB = 4
task4(&IntA, &IntB)

//5
func task5( _ a: [Int], _ b: [Int]) -> Bool{

    var sum1 = 0
    var sum2 = 0
    for i in a{
        sum1 += i
    }
    for j in b{
        sum2 += j
    }
    if sum1 > sum2{
            return true
        }
    else {
            return false
        }
}
print(task5([7,5,4], [6,3,1]))

//6 fixed
func task6(_ arraySort: [Int]) -> [Int]{
    return arraySort.sorted(by: >)
}
task6([3,4,9,7,8])

//7 fixed
func task7(_ array7: [Double]) -> Double{
    let sumArray: Double = Double(array7.reduce(0, +))
    let count: Double = Double(array7.count)
    let avgArrayValue = sumArray / count
    return avgArrayValue
}
task7([1,3,5,7,9,2,4,6,8])

//8
func task8(_ array8:[String], _ search: String) -> Int?{
    var Value: Int?
    for (index, value) in array8.enumerated(){
            if array8.contains(value) {
                Value = index
            }
        }
        return Value
    }

task8(["toyota", "nissan", "honda", "lexus"], "lexus")

//9, result будет равен "Hello grown man/woman0" так как "25." не является Int
var age = Int("25.") ?? 0

var result = age < 18 ? "Hello, young man/woman" : "Hello grown man/woman"
result += "\(age)"

//10, result будет равен 4
func inc(a: Int) -> Int{
    return a + 3
}


func dec(a: Int) -> Int{
    return a - 5
}


func compute(a: Int) -> Int{
    return inc(a: a) + dec(a: a)
}

let result1 = compute(a: 5) - compute(a: 3)

/*
Дополнительные задания
    Функции
    Напишите, можно ли в функции вернуть tuple? Да, можно, но данный кортеж будет являться опциональным.
    Можно ли внутри функции написать другую функцию? Да, это называется вложенная функция
    

    Опционалы
    Напишите, в каких случаях следует использовать восклицательный знак для опционалов.
    Восклицательный знак следует использовать если опционал содержит значение
 */


