import UIKit

func calculated(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a,b)
}

var result = calculated(a: 10, b: 10) {(left: Int, right: Int) -> Int in
    return left + right
}

var result2 = calculated(a: 10, b: 10) {(left: Int, right: Int) in
    return left + right
}

var result3 = calculated(a: 10, b: 10) { $0 + $1 }

/***************************************************
 다음의 클로져를 FullSyntax 로부터 Optimized Syntax 로 차근차근 줄여보세요.
 그리고 그 과정에 일어나는 변화를 주석으로 설명하세요.
 
 func performClosure(param: (String) -> Int) {
 param("Swift")
 }
 ***************************************************/
func performClosure(param: (String) -> Int) {
    param("Swift")
}

performClosure(param: {(str: String) -> Int in
    return str.count
})

performClosure(param: {(str: String) in
    return str.count
})

performClosure(param: {(str: String) in
    str.count
})

// 여기서부터 틀림

performClosure(param: {(str) in
    str.count
})

performClosure(param: {
    $0.count
})

performClosure() {
    $0.count
}

performClosure {$0.count}

