import UIKit

// 1. Modifying Value Types from Within Instance Methods

// 구조체와 열거형은 값타입(Value Type)이다

// 기본적으로 Value Type의 프로퍼티들은 해당 인스턴스 메소드 내에서 수정할 수 없다

// 그러나 특정 메소드 내에서 구조체 또는 열거형의 프로퍼티를 수정해야 하는 경우, 해당 메소드의 동작을 변결(mutating)하도록 선택 할 수 있다

// 그런 다음 메소드는 메소드 내에서 프로퍼티를 변경할 수 있으며 메소드가 끝나면 변경된 내용이 원래 구조체에 다시 기록된다

// 메소드는 암시적(implicit)자체 프로퍼티에 완전히 새로운 인스턴스를 할당 할 수도 있다

// 이 새 인스턴스는 메소드가 종료되면 기존 인스턴스를 바꾼다

// func 키워드 앞에 "mutating" 키워드를 두면 위 동작을 수행할 수 잇다

//struct Point {
//
//    var x = 0.0
//
//    var y = 0.0
//
//    func moveBy(x deltaX: Double, y deltaY: Double) {
//        x += deltaX
//
//        y += deltaY
//    }
//}

// 위의 코드는 틀린 코드이다

// 기본적으로 Value Type의 프로퍼티들은 해당 인스턴스 메소드 내에서 수정할 수 없다

// 메소드 안에서 프로퍼티들을 "수정"하고 있으니 위 코드는 에러가 난다

struct Point {
    
    var x = 0.0
    
    var y = 0.0
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        
        x += deltaX
        
        y += deltaY
        
    }
}

var somePoint = Point(x: 1.0, y: 1.0)
print(somePoint.x, somePoint.y)

somePoint.moveBy(x: 2.0, y: 3.0)
print(somePoint.x, somePoint.y)

// 위 Point라는 구조체는 인스턴스를 일정량 만큼 이동시키는 mutating moveBy(x: y:)메소드를 정의한다

// 새 point를 반환하는 대신, 이 메소드는 실제로 이 point를 호출 한 point를 수정한다

// mutating 키워드는 해당 프로퍼티를 수정할 수 있도록 정의부분에 추가된다.

// var 로 somePoint라는 이름의 Point 인스턴스를 만들었다 그러나 let으로 만들게되면 해당 프로퍼티들이 let으로 선언된것과 동일한 효과를 가져와 값을 변경하지 못한다, mutating과 상관없이.


// 2. Assigning to self Within a Mutating Method

// mutating 메소드는 암시적(implicit) self 프로퍼티에 완전히 새로운 인스턴스를 할당 할 수 있다

struct SelfPoint {
    
    var x = 0.0
    
    var y = 0.0
    
    mutating func selfMoveBy(x deltaX: Double, y deltaY: Double) {
        self = SelfPoint(x: x + deltaX, y: y + deltaY)
    }
}

var someSelfPoint = SelfPoint(x: 1.0, y: 1.0)
print(someSelfPoint)

someSelfPoint.selfMoveBy(x: 2.0, y: 3.0)
print(someSelfPoint)

// 위의 selfMoveBy(x: y:)메소드는 x 및 y 값이 대상 위치로 설정된 새로운 구조체를 만든다

// self는 Point 자체를 의미한다 이 self 에 Point 타입을 할당, 아에 새로운 Point 인스턴스가 되는 것이다

// 열거형을 변경하는 방법은 암시적(implicit) self 파라미터로 동일한 열거형의 다른 케이스로 설정할 수 있다

enum TriStateSwitch {
    case off, low, high
    
    mutating func next() {
        
        switch self {
            
        case .off:
            
            self = .low
            
        case .low:
            
            self = .high
            
        case .high:
            
            self = .off

        }
    }
}

var ovenLight = TriStateSwitch.low

print(ovenLight)

ovenLight.next()
print(ovenLight)

ovenLight.next()
print(ovenLight)

// 열거형도 Value Type이기 때문에, next()라는 인스턴스 메소드 내에서 프로퍼티를 바꿀 수 없다. 하지만 "mutating" 키워드는 그것을 가능하게 한다

