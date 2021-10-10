import UIKit

//1
func sumArray(_ array:[Int]) -> Int {
    var array1 = array
    if array1.count < 2{
        array1.insert(0, at: 0)
        array1.insert(0, at: 1)
        array1[0] + array1[1]
    }
    else{
        array1[0] + array1[1]
    }
    return 0
}
sumArray([4,5,6,3,5,5])

//2
func firstLast (_ array:[Int]) -> [Int]? {
    var array1: [Int] = []
    guard array.count >= 2 else { return nil }
    array1.append(array.first!)
    array1.append(array.last!)
    return array1
}
firstLast([5,7,5,4,3,4])

//3
let numArray = [1.5, 10, 4.99, 2.30, 8.19]
let even = numArray.filter{ $0 <= 5 }
print(even)

//4
 var dates = [Date]()
 for i in 0..<5 {
     if let date = Calendar.current.date(byAdding: .day, value: i, to: Date()) {
         dates.append(date)
     }
 }
print(dates)
 var stringDateArray = [String]()

 for date in dates {
     let dateFormatter = DateFormatter()
     dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
     let stringDate = dateFormatter.string(from: date)
     stringDateArray.append(stringDate)
 }
 print(stringDateArray)

//5
var dates1 = [Date]()
for i in 0..<5 {
    if let date = Calendar.current.date(byAdding: .day, value: i, to: Date()){
        dates1.append(date)
    }
}
print(dates1)
let dateToStr: [String] = dates1.map {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    return dateFormatter.string(from: $0)
}
print(dateToStr)

//6
let a: Set<Int> = [5,7,8,9,11,13]
let b: Set<Int> = [2,3,5,7]
print(a.intersection(b))

