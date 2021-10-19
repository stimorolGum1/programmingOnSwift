import UIKit

class BankValut : Door{
    var isLocked : Bool = true

    func open() {
        if isLocked{
          print("Locked !")
        }else{
            print("Clang!")
        }

    }
    func close() {
        print("Slamm")
        isLocked = true
    }
    func unlock(combination : String){
        isLocked = false
    }
    var description: String {
        if isLocked {
            return "A bank vault that is locked"
        } else {
            return "An unlocked bank vault"
        }
    }
}

let Door = Door()
Door.open()
