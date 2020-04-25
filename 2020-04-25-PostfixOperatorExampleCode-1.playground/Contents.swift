import UIKit

// 사용자정의 후위 연산자 정의와 함수 구현
//postfix operator **

//postfix func **(value: Int) -> Int {
//    return value + 10
//}
//
//let six: Int = 6
//let sixPlusTen: Int = six**
//
//print(sixPlusTen)

// 전위 연산자와 후위 연산자 동시 사용
prefix operator **
postfix operator **

prefix func **(value: Int) -> Int {
    return value * value
}

postfix func **(value: Int) -> Int {
    return value + 10
}

let six: Int = 6
let squrtSixPlusTen: Int = **six**

print(squrtSixPlusTen) // (10 + 6) * (10 + 6) == 256
