import UIKit

// String 타입의 contains(_:) 메서드를 사용하기 위해 Foundation 프레임워크를 임포트한다.
import Foundation

// 중위 연산자의 구현과 사용
infix operator **: MultiplicationPrecedence

func **(lhs: String, rhs: String) -> Bool {
    return lhs.contains(rhs)
}

let helloSuA: String = "Hello Su-A"
let suA: String = "Su-A"
let isContainsSuA: Bool = helloSuA ** suA

print(isContainsSuA)

// 클래스 및 구조체의 비교 연산자 구현
class Car {
    var modelYear: Int? // 연식
    var modelName: String? // 모델 이름
}

struct SmartPhone {
    var company: String? // 제조사
    var model: String? // 모델
}

// Car 클래스의 인스턴스끼리 == 연산을 했을 때 modelName이 같다면 true를 반환
func ==(lhs: Car, rhs: Car) -> Bool {
    return lhs.modelName == rhs.modelName
}

// SmartPhone 구조체의 인스턴스끼리 == 연산을 했을 때 model이 같다면 true를 반환
func ==(lhs: SmartPhone, rhs: SmartPhone) -> Bool {
    return lhs.model == rhs.model
}

let myCar = Car()
myCar.modelName = "S"

let yourCar = Car()
yourCar.modelName = "S"

var myPhone = SmartPhone()
myPhone.model = "8Plus"

var yourPhone = SmartPhone()
yourPhone.model = "10"

print("🚗 : \(myCar == yourCar)")
print("📱 : \(myPhone == yourPhone)")
