import UIKit


extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isEven)
print(2.isEven)
print(1.isOdd)
print(2.isOdd)

var someNumber: Int = 3
print(someNumber.isEven)
print(someNumber.isOdd)

someNumber = 2
print(someNumber.isEven)
print(someNumber.isOdd)

// 이 코드의 익스텐션은 Int 타입에 두 개의 연산 프로퍼티를 추가한것
// Int 타입의 인스턴스가 홀수인지 짝수인지 판별하여 Bool 타입으로 알려주는 연산 프로퍼티
// 인스텐션으로 Int 타입에 추가해준 연산 프로퍼티는 Int 타입의 어떤 인스턴스에도 사용이 가능
// 위의 코드처럼 인스턴스 연산 프로퍼티를 추가할 수도 있음
// static 키워드를 사용하여 타입 연산 프로퍼티도 추가 할 수 있다

