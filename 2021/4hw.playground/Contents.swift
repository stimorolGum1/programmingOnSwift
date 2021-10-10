import UIKit

//1
func compare(_ a:Int, _ b:Int) {
    if a == b {
        print("Равно")
    }
    else if a > b {
        print("Больше")
    }
    else if a < b {
        print("Меньше")
    }
}
compare(5, 3)

//2
func strToInt( _ number: String?) -> Int {
    guard let num = Int(number ?? "") else{
        print("Ошибка")
        return -1
    }
        if num > 0 && num <= 100 {
            return num
        }
        else {
            print("\(num) вне диапазона")
        }
        return num
    }


strToInt("6")
//3

func findMaxNum( _ Array: [Int]) -> Int {
    var max: Int = 0
    for i in 0..<Array.count {
            if Array[i] > max {
                max = Array[i]
            }
        }
    return max
}

findMaxNum([1,2,3,5,6,6])

//4

func cube( _ side: Int){
    switch side {
    case 1,2,3:
        print("проигрыш")
    case 4,5,6:
        print("победа")
    default:
        print("У кубика только 6 граней!")
    }
}
cube(8)


