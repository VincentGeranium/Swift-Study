import UIKit

// 탈출 클로저를 매개변수로 갖는 함수
var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}


// 함수를 탈출하는 클로저의 예
typealias VoidVoidClosure = () -> Void

let firstClosure: VoidVoidClosure = {
    print("Closure A")
}

let secondClosure: VoidVoidClosure = {
    print("Closure B")
}

// first와 second 매개변수 클로저는 함수의 반환 값으로 사용될 수 있으므로 탈출 클로저이다.
func returnOneClosure(first: @escaping VoidVoidClosure, second: @escaping VoidVoidClosure, shouldReturnFirstClosure: Bool) -> VoidVoidClosure {
    // 전달인자로 전달받은 클로저를 함수 외부로 다시 반환하기 때문에 함수를 탈출하는 클로저이다.
    return shouldReturnFirstClosure ? first : second
}

// 함수에서 반환한 클로저가 함수 외부의 상수에 저장되었다.
let returnedClosure: VoidVoidClosure = returnOneClosure(first: firstClosure, second: secondClosure, shouldReturnFirstClosure: true)

returnedClosure()

var closures: [VoidVoidClosure] = []

// closure 매개변수 클로저는 함수 외부의 변수에 저장될 수 있으므로 탈출 클로저이다.
func appendClosure(closure: @escaping VoidVoidClosure) {
    // 전달인자로 전달받은 클로저가 함수 외부의 변수 내부에 저장되므로 함수를 탈출한다.
    closures.append(closure)
}

// 클래스 인스턴스 메서드에 사용되는 탈출, 비탈출 클로저
func functionWithNonescapeClosure(closure: VoidVoidClosure) {
    closure()
}

func functionWithEscapingClosure(completionHandler: @escaping VoidVoidClosure) -> VoidVoidClosure {
    return completionHandler
}

class SomeClass {
    var x = 10
    
    func runNonescapeClosure()  {
        // 비탈출 클로저에서 self 키워드 사용은 선택 사항이다.
        functionWithNonescapeClosure { x = 200 }
    }
    
    func runEscapingClosure() -> VoidVoidClosure {
        // 탈출 클로저에서는 명시적으로 self를 사용해야 한다.
        return functionWithEscapingClosure { self.x = 100 }
    }
}

let instance: SomeClass = SomeClass()
instance.runNonescapeClosure()
print(instance.x)

let anotherReturnedClosure: VoidVoidClosure = instance.runEscapingClosure()
anotherReturnedClosure()
print(instance.x)
