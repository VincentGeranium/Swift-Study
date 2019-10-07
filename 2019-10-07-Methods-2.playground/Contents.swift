import UIKit

// 1.The self Property

// 타입의 모든 인스턴스에서는 "self"라는 암시적(implicit)프로퍼티를 가진다. 이것은 인스턴스 자신과 정확하게 동일하다.

// self 프로퍼티를 사용하여 자체 인스턴스 메소드 내에서 현재 인스턴스를 참조할 수 있다

// 인스턴스 메소드 예제

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

// 위의 예제에서 사용된 increment()는 다음과 같이 작성 할 수 있다

class SelfPropertyCounter {
    
    var count = 0
    
    func increment() {
        self.count += 1
    }
}

// 실제로는 코드에 "self"를 자주 쓰지 않아도 된다

// 명시적으로(explicitly) self를 작성하지 않으면, Swift는 메소드 내에서 알려진 프로퍼티 또는 메소드 이름을 사용할 때마다, 현재 인스턴스 프로퍼티 또는 메소드를 참조한다고 가정한다

// 이 가정은 Counter 클래스의 세가지 메소드 내에서 count(변수 저장 프로퍼티)를 사용하는 것을 보면 증명이 된다.

// 이 규칙에 대한 주된 예외는 인스턴스 메소드의 매개변수 이름이 해당 인스턴스 프로퍼티와 동일한 이름을 가질 때 발생

// 이 경우 매개변수 이름이 우선 적용되며, 더 적합한 방법으로 프로퍼티를 참조해야 한다. self 프로퍼티를 사용하여 매개변수 이름과 프로퍼티 이름을 구별한다.

// 다음 예제에서 self는 x라는 메소드 매개변수와 x라고 하는 인스턴스 프로퍼티 사이를 모호하게 한다
// 즉, 인스턴스 메소드 내에서 해당 타입이 가진 프로퍼티나 메소드를 참조할 수 있다는 것이다
// 하지만, 다음과 같이 매개변수 이름과 저장 인스턴스 프로퍼티 이름이 같으면, Swift는 매개변수 이름을 우선 적용하기 때문에 "self"를 꼭 붙혀서 이게 해당 타입의 저장 인스턴스 프로퍼티인지 구별해야줘야 한다.

struct Point {
    
    var x = 0.0
    
    var y = 0.0
    
    func isToTheRightOf(x: Double) -> Bool {
        
        return self.x > x
    }
}

// 위 Point라는 구조체는 isToTheRightOf라는 인스턴스 메소드를 하나 가지고 있다 그런데 파라미터 이름으로 x를 받는다
// 하지만 Point의 저장 인스턴스 프로퍼티로 x가 또 있다
// 이럴 때 "self" 를 붙혀서 구별을 해줘야 한다
