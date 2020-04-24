import UIKit

prefix operator **

prefix func **(value: Int) -> Int {
    return value * value
}

// 사용자정의 전위 연산자 함수 중복 정의와 사용
prefix func **(value: String) -> String {
    return value + " " + value
}

let resultString: String = **"JiYeon"
print(resultString)

let minusSix: Int = -6
let sqrtMinusSix: Int = **minusSix
print(sqrtMinusSix)

