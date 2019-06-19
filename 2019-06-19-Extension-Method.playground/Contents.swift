import UIKit

extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
}

var someNumber: Int = 3

print(3.multiply(by: 2))
print(4.multiply(by: 5))

print(someNumber.multiply(by: 2))
print(someNumber.multiply(by: 3))

// 익스텐션을 통해 Int 타입에 인스턴스 메서드인 multiply(by:) 메서드를 추가
// 여러 기능을 여러 익스텐션 블록으로 나눠서 구현해도 문제 없음
// 관련된 기능별로 하나의 익스텐션 블록에 묶어주는 것이 좋음
