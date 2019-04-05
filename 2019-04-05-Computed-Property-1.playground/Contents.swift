import UIKit

/*
스위프트 프로퍼티에서 get과 set 활용법 및 사용법

기본 문법 구조
 
 var someNewProperty: Int {
 get {
 return someNewProperty
 }
 set(newValue) {
 someNewProperty = newValue
 }
 }
 
 // print(someNewProperty) // someNewProperty
 // someNewProperty = 123 // newValue 값은 123
 


// 하지만 위의 코드와 똑같이 하면 xcode에서는 경고 문구를 준다
// 이유는 get과 set이 해당 프로퍼티에 직접적으로 붙어있기 때문이다
// 위와 같이 작성하면 get{}, set{}에서 someNewProperty에 접근하게 되면 재귀적이게 get와 set를 호출하게 되므로 이렇게 사용해서는 안된다
// 일반적으로 get,set은 아래의 예시 코드 처럼 실제 값을 저장 할 backing storage가 필요하다

 var backingStorge: Int
 var someNewProperty: Int {
 get {
 return backingStorge
 }
 set(newValue) {
 backingStorge = newValue
 }
 }
 
 // 위의 코드에서 backingStorge가 실제로 값이 저장되는 변수이다
 // 외부에서 someNewProperty의 값에 접근하거나 새로운 값을 할당하면 실제로 값이 저장되는 곳은 someNewProperty가 아닌 backingStorge이다
 //  즉 someNewProperty는 backingStorge의 interface(정보를 주고받는 접점) 역활을 한다
 
 
 
 // get, set의 활용
 
 1. 프로퍼티에 값이 할당 될 떄 적절한 값인지 검증하기 위해
 2. 다른 프로퍼티값에 의존적인 프로퍼티를 관리 할 때
 3. 프로퍼티를 private하게 사용하기 위해
 
*/


// 1번의 경우cla

class Company {
    var backingStorge: Int = 5
    var members: Int {
        get {
            return backingStorge
        }
        set(newValue) {
            if (newValue < 1) {
                print("직원수는 한명보다 작을 수 없습니다")
            } else {
                backingStorge = newValue
            }
        }
    }
}

var test = Company()
test.backingStorge = 5
test.backingStorge
test.members = 1
test.members = 0
test.members = 1
test.members = 0
test.members = 10
test.members
// Company 클래스가 있고 그 안에 직원수를 나타내는 members 프로퍼티가 있다
// 직원 수를 나타내는 members 변수는 Int 타입으로 선언
// 직원의 수를 나타내는 members는 음수가 되면 안된다
// 그러므로 값을 바꿀 때는 검증 할 필요가 있다
// set{} 의 newValue값을 사용하여 프로퍼티의 값이 바뀌기전에 확인 할 수 있다

// 2번의 경우

class Company2 {
    var _members: Int = 5
    var members: Int {
        get {
            return _members
        }
        set {
            if (newValue < 1) {
                print("직원수는 한명보다 적을 수 없다")
            } else {
                _members = newValue
            }
        }
    }
    
    var teamDinnerCost: Int {
        get {
            return _members * 1_00_000
        }
    }
}

var test2 = Company2()
test2.members = 2
test2.teamDinnerCost

// 회식비를 의미하는 teamDinnerCost 프로퍼티
// 회식비는 직원 수에 비례하기 때문에 _members 프로퍼티에 의존적이다
// teamDinnerCost 프로퍼티에 get을 사용하면 직원수에 비례하여 계산된 회식비를 반환
// 이렇게 할경우 teamDinnerCost의 값을 따로 신경쓰지 않아도 된다
// 또한 get {} 만 구현했으므로 외부에서 teamDinnerCost의 값을 변경하려고 하면 에러가 발생
// 이것으로 알 수 있는 사실은 get과 set을 사용 할 수 있는 프로퍼티는 연산 프로퍼티이고
// 또한 get만 사용 할 수 있다는 점
// get만 사용하면 읽기 전용 프로퍼티 ->. Read-Only-Computed-Property
// get 만 있으면 특정한 값을 못 전해준다
// get 과 set 이 함께있으면 특정한 값을 연산 하여 값을 돌려줄 수 있다

// get과 set 혹은 get 만 사용 할 수 있는 프로퍼티 = 연산프로퍼티

//class Point {
//    var x: Int {
//        get {
//            return x
//        }
//        set {
//            x = newValue * 2
//        }
//    }
//}
//var p: Point = Point()
//p.x = 12 // error

// 위의 예시 코드는 error
// 위의 코드를 뜯어보면 x 같은 경우 자기 자신을 두배로 만들어주고, 자신을 리턴 -> 재귀형
// 재귀형이 안되려면 값을 "저장"할 변수가 하나 있어야 한다
// 즉 get 과 set을 사용하려면 그 연산된 값을 저장할 변수가 반드시 있어야 한다는 것이다

class Point {
    var tempX: Int = 1
    
    var x: Int {
        get {
            return tempX
        }
        set {
            tempX = newValue * 2
        }
    }
}

var p: Point = Point()
p.x
print(p.x)
p.x = 10
print(p.x)

// tempX 라는 가변 저장 프로퍼티를 만들어 주었다
// x는, tempX에 대해 "연산"을 한다, 만약 값을 읽으려고 하면 tempX에 있는 값을 리턴하고, 값을 저장할 땐 2배로 해서 tempX에 지정한다
// tempX에 1로 값을 초기화해서 주었지만 init 메소드를 활용 할 수 있다

class testPoint{
    var testTempX: Int

    init(testTempX: Int) {
        self.testTempX = testTempX
    }

    var testX: Int {
        get {
            return testTempX
        }
        set {
            return testTempX = newValue * 2
        }
    }
}

let testP: testPoint = testPoint(testTempX: 1)
testP.testX
print(testP.testX)

let testP2: testPoint = testPoint(testTempX: 1)
testP2.testX = 10
print(testP2.testX)

// 3번의 경우
// 프로퍼티를 private하게 만드는 방법
// private(set) var someProperty: Int = 10

// 위의 경우 someProperty는 internal getter와 private setter을 얻게된다
// 즉, someProperty가 선언된 파일내에서만 값을 수정 할 수 있고 외부에서는 값을 수정 할 수 없다
// 반면에 someProperty의 값을 얻는것은 모듈내에서는 어디서든 할 수 있다

// internal getter가 아닌 pulic getter로 만드는 방법도 있다
// public private(set) var someProperty: Int = 10

// 위와 같이 선언된 경우 someProperty의 값은 어디서든 접근할 수 있다
// 다만 이렇게 선언할 경우 class를 public로 선언해야 한다.

