import UIKit

// 반환 값이 없는 함수의 정의와 사용.
func sayHelloWorld() {
    print("Hello World!")
}
sayHelloWorld()

func sayHello(from myName: String, to name: String) {
    print("Hello \(name)! I'm \(myName)")
}
sayHello(from: "Jun", to: "Su-A")

func sayGoodBye() -> Void { // Void를 명시
    print("Good Bye")
}
sayGoodBye()
