import UIKit

// 그때 그때 특정한 연산을 통해 값을 리턴해주는 프로퍼티
// 클래스, 구조체, 열거형에서 사용됨
// getter과 setter를 통해 다른 프로퍼티와 간접적으로 값을 검색하고 셋팅함
// getter과 setter를 사용하려면 그 연산된 값을 저장할 변수가 반드시 있어야 한다.

class FirstPoint {
    
    var tempX: Int
    
    init(tempX: Int) {
        self.tempX = tempX
    }
    
    var x: Int {
        get {
            return tempX
        }
        set(newValue) {
            tempX = newValue * 2
        }
    }
}

var p: FirstPoint = FirstPoint(tempX: 1)
print(p.x)

p.x = 12
print(p.x)

// x 라는 프로퍼티는 값을 "연산"해서 tempX에 할당하거나 리턴하는 역활만 한다
// 연산프로퍼티 (위의 코드에서는 x를 지칭함) "반드시 var로 선언"되어야 한다.
// 그 이유는 값이 고정되어 있지 않기 때문이다

// newValue를 다른 이름으로 바꿔보기

class SecondPoint {
    var tempY: Int
    
    init(tempY: Int) {
        self.tempY = tempY
    }
    
    var y: Int {
        get {
            return tempY
        }
        
        set(anotherValue) {
            tempY = anotherValue * 2
        }
    }
}

var sp: SecondPoint = SecondPoint(tempY: 3)
print(sp.y)

sp.y = 2
print(sp.y)

// 위의 set 옆에 있는 괄호 안에 newValue와 anotherValue는 새로이 받은 값을 넣어 줄 파라미터이다
// 괄호 안에 따로 이름을 지정하여 위의 코드처럼 짤 수도 있고 괄호 없이 set으로만 코드를 만들어도 된다
// 대신 괄호 없이 set 만 쓴다면 반드시 newValue라는 키워드를 이용해야 한다

class NewClass {
    var tempStorage: Int
    
    init(tempStorage: Int) {
        self.tempStorage = tempStorage
    }
    
    var z: Int {
        get {
            return tempStorage
        }
        
        set {
            tempStorage = newValue * 3
        }
    }
}

var nc: NewClass = NewClass(tempStorage: 4)
print(nc.z)

nc.z = 3
print(nc.z)

// Apple Documentation Example

struct Point {
    // 저장 프로퍼티
    var x = 0.0
    var y = 0.0
}

struct Size {
    // 저장 프로퍼티
    var width = 0.0
    var height = 0.0
}

struct Rect {
    
    var origin = Point() // Point 구조체 인스턴스, origin은 x,y 좌표이므로 Point 타입으로 만들어준다
    
    var size = Size() // Size 구조체 인스턴스, size는 너비와 높이를 가지고 있으므로 Size 타입으로 만들어준다
    
    // get과 set을 가지는 연산 프로퍼티
    // center는 어떤  사각형의 가운데 좌표를 의미
    // 그러므로 Point 타입으로 선언

    var center: Point {
        
        get {
            
            // get에도 아래처럼 새로 변수를 선언하고 값을 할당 할 수 있다.
            // 리턴만 잘 해주면 된다.
            
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            
            // 리턴하는 타입은 center의 타입과 반드시 같아야 한다
            // 그러므로 Point를 반환
            return Point(x: centerX, y: centerY)
            
        }
        
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))

let initialSquareCenter = square.center
print(initialSquareCenter)

square.center = Point(x: 15.0, y: 15.0)
print("square origin is now at (\(square.origin.x), \(square.origin.y))")
