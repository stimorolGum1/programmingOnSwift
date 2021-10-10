import UIKit

//1 fixed
func nextNumber(_ number: Int) -> Int {
    return number + 1
}
nextNumber(4)

//2
func getSquare (_ a: Int) -> Int {
    return a * a
}

let value = getSquare(3)
print(value)

//3 fixed
func minSec(_ sec: Int) -> (Int, Int) {
    print("\(sec / 60) минут, \(sec % 60) секунд")
    return (sec / 60, sec % 60)
}
minSec(189)

//4
let string1 = "Writing Swift code "
let string2 = "is interactive and fun"

func stringSum(_ string1: String, _ string2: String) -> String {
    return string1 + string2
}
stringSum(string1, string2)

//5 fixed
func dataStrToDate(_ isoDate: String) -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let data = dateFormatter.date(from:isoDate) ?? Date()
    return data
}
dataStrToDate("2016-07-14")

