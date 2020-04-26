import UIKit

// 타입 메서드로 구현된 사용자정의 비교 연산자.

class Car {
    var modelYear: Int?
    var modelName: String?
    
    // Car 클래스의 인스턴스끼리 == 연산을 했을 때 modelName이 같다면 true를 반환
    static func ==(lhs: Car, rhs: Car) -> Bool {
        return lhs.modelName == rhs.modelName
    }
}

struct SmartPhone {
    var company: String?
    var model: String?
    
    // SmartPhone 구조체의 인스턴스끼리 == 연산을 했을 때 model이 같다면 true를 반환
    static func ==(lhs: SmartPhone, rhs: SmartPhone) -> Bool {
        return lhs.model == rhs.model
    }
}

let myCar = Car()
myCar.modelName = "S"

let yourCar = Car()
yourCar.modelName = "S"

print("🚗 : \(myCar == yourCar)")

var myPhone = SmartPhone()
myPhone.model = "8Plus"

var yourPhone = SmartPhone()
yourPhone.model = "10"

print("📱 : \(myPhone == yourPhone)")
