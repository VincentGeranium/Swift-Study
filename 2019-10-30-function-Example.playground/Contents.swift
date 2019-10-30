import UIKit

// 스위프트에서 함수는 일급객체이므로 타입이 될 수 있다

func sayHello(to: String, from: String) -> Void {
    print("\(from)이(가) \(to)에게 인사합니다")
}

var hello: (String, String) -> Void = sayHello(to:from:)

hello("수아", "광준")


func greeting(function: (String, String) -> Void) {
    function("광준", "수아")
}

greeting(function: sayHello(to:from:))

greeting(function: hello)
