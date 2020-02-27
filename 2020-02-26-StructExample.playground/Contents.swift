import UIKit

struct BasicInformation {
    var name: String
    var age: Int
}

// 프로퍼티 이름(name, age)으로 자동 생성된 이니셜라이저를 사용하여 구조체를 생선한다
var junInfo: BasicInformation = BasicInformation(name: "Jun", age: 23)
junInfo.age = 100 // 변경 가능
junInfo.name = "Vincent" // 변경 가능

// 프로퍼티 이름(name, age)으로 자동 생성된 이니셜라이저를 사용하여 구조체를 생선한다
let vincentInfo: BasicInformation = BasicInformation(name: "Vincent", age: 25)
//vincentInfo.age = 100 // 변경 불가
//vincentInfo.name = "Geranium" // 변경 불가
