import UIKit

func swapTwoInts( a: inout Int, b: inout Int) {
    let temp = a
    a = b * 2
    b = temp * 2
}
swapTwoInts(a: 4, b: 6)
