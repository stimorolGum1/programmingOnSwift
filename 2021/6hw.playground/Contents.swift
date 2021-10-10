import UIKit

//1
var days = ["Понедельник": 1, "Вторник" : 2 , "Среда" : 3 ]
//2
days["Четверг"] = 4
//3
for (day, number) in days {
    print("\(day) - \(number)")
}
//4
enum CustomError: Error, LocalizedError {
    case invalidPassword
    case notFound
    
    public var errorDescription: String? {
        switch self {
        case .invalidPassword:
            return "Неправильный пароль"
        case .notFound:
            return "Не найдено"
        }
    }
}
//5
func throwsError(_ error: Bool) throws {
    guard error == false else {
        throw CustomError.notFound
    }
}

//6
do {
    try throwsError(true)
} catch {
    print(error.localizedDescription)
}

