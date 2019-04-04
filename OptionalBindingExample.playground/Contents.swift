import UIKit

func printName(paramName: String) {
    print(paramName)
}

var myName: String? = nil
if let name = myName {
    printName(paramName: name)
}

// 아무것도 안나온다 - 그 이유는 myName이 nil 값을 가지고 있기 때문이다
// if let 구문은 myName 이라는 변수에 값이 있으면 name 에 값을 넣고 조건문을 실행해라 라는 뜻이다
// 하지만 myName에는 nil 값이 있으므로 조건뮨은 실행하지 않게 된다
// 값이 있을때만 바인딩된다
