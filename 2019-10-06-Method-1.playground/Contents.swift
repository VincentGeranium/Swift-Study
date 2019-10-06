import UIKit

// 1. Method

// 메소드는 특정 타입과 연관된 함수
// 클래스, 구조체 및 열거형은 특정 작업이나 기능을 캡슐화한 인스턴스 메소드와 타입 자체와 관련된 타입메소드를 정의 할 수 있다.

// Swift에서 구조체와 열거형을 정의할 수 있다는 사실은 C와 Objective-C와의 주요한 차이점이다

// Objective-C에서 클래스는 메소드를 정의할 수 있는 유일한 타입.

// Swift에서는 클래스, 구조체 또는 열거형을 정의하는 여부를 선택할 수 있다. 그리고 사용자가 만든 타입에 대한 메소드를 유연하게 정의 할 수 있다.

// 2. Instance Methods

// 인스턴스 메소드는 특정 클래스, 구조체 또는 열거형의 인스턴스에 속하는 함수

// 인스턴스 프로퍼티의 접근 및 수정 방법을 제공하거나 인스턴스 목적(purpose)과 관련된 기능을 제공하여 해당 인스턴스의 기능을 지원한다

// 인스턴스 메소드는 함수(Function)와 완전히 동일한 구문을 사용한다

// 인스턴스 메소드가 속한 타입의 중괄호({...}) 안에 인스턴스 메소드를 작성한다

// 인스턴스 메소드는, 다른 모든 인스턴스 메소드 및 해당 타입의 특성에 암시적으로(implicit) 접근한다

// 인스턴스 메소드는 자신이 속한 타입의 특정 인스턴스에서만 호출 될 수 있다
// 기존의 인스턴스가 없으면, 호출 불가

// 인스턴스 메소드의 예제

class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func increment(by amount: Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

// Counter라는 클래스 정의
// Counter 클래스는 3가지 인스턴스 메소드를 정의하고 있다
// increment() 메소드는 count를 1씩 증가시킨다
// increment(by: Int)는 지정된 정수만큼 count를 증가시킨다
// reset() 메소드는 count를 0으로 재설정한다

// Counter 클래스는 현재 카운터 값을 추적하기 위해 count라는 변수 저장 프로퍼티를 선언
// 프로퍼티와 마찬가지로 .(dot)을 통해 인스턴스 메소드를 호출 할 수 있다.

let counter = Counter()
print(counter.count) // 기본값인 0

counter.increment()
print(counter.count) // increment()메소드를 호출하여 1증가 -> count = 1

counter.increment(by: 5)
print(counter.count) // increment(by: Int)메소드를 호출하여 파라미터로 5라는 지정된 정수를 전달하여 count에 5가 증가 -> count = 6

counter.reset()
print(counter.count) // reset() 메소드를 호출하여 count를 0으로 재설정
