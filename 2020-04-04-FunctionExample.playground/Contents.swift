import UIKit

func hello(name: String) -> String {
    return "Hello \(name)"
}

let helloJun: String = hello(name: "Jun")
//print(helloJun)

func helloWorld() -> String {
    return "Hello, World"
}

//print(helloWorld())

func sayHello(myName: String, yourName: String) -> String {
    return "Hello \(yourName)! I'm \(myName)"
}

//print(sayHello(myName: "Jun", yourName: "Ron"))

// 매개변수 이름과 전달인자 레이블을 가지는 함수 정의와 사용.
// from과 to라는 전달인자 레이블이 있으며
// myName과 name이라는 매개변수 이름이 있는 sayHello 함수

func sayHello(from myName: String, to name: String) -> String {
    return "Hello \(name)! I'm \(myName)"
}

//print(sayHello(from: "Jun", to: "Potter"))

// 전달인자 레이블이 없는 함수 정의와 사용
func sayHello(_ name: String, _ times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    return result
}

//print(sayHello("Jun", 2))

// 전달인자 레이블 변경을 통한 함수 중복 정의
func sayHello(to name: String, _ times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    return result
}

func sayHello(to name: String, repeatCount times: Int) -> String {
    var result: String = ""
    
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    return result
}

print(sayHello(to: "Jun", 2))
print(sayHello(to: "Jun", repeatCount: 3))

