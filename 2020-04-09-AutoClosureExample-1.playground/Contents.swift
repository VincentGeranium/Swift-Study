import UIKit

// 클로저를 이용한 연산 지연

// 대기 중인 손님들 배열
var customersInLine: [String] = ["Jun", "Su-A", "Vincent", "JuYeon"]
//print("현재 손님 수 : \(customersInLine.count)")

// 클로저를 만들어두면 클로저 내부의 코드를 미리 실행(연산)하지 않고 가지고만 있다.
//let customerProvider: () -> String = {
//    return customersInLine.removeFirst()
//}
//print("현재 손님 수 : \(customersInLine.count)")

// 실제로 실행
//print("Now serving \(customerProvider())!")
//print("현재 손님 수 : \(customersInLine.count)")

// 함수의 전달인자로 전달하는 클로저

// customerInLine is ["Jun", "Su-A", "Vincent", "JuYeon"]

//func serveCustomer(_ customerProvider: () -> String) {
//    print("Now serving \(customerProvider())!")
//}

//serveCustomer( { customersInLine.removeFirst() } )

// 자동 클로저의 사용

// customerInLine is ["Jun", "Su-A", "Vincent", "JuYeon"]

func anotherServeCustomer(_ customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}

//anotherServeCustomer(customersInLine.removeFirst())

// 자동 클로저의 탈출
var customersInLines: [String] = ["Su-A", "Jun", "JiYeon"]

func returnProvider(_ customerProvider: @autoclosure @escaping () -> String) -> (() -> String) {
    return customerProvider
}

let customerProvider: () -> String = returnProvider(customersInLines.removeFirst())
print("Now Serving \(customerProvider())!")
