import UIKit

// Stored Property
// 저장 프로퍼티 -> 값을 저장하는 프로퍼티
// 상수와 변수 값을 인스턴스의 일부로 저장
// 클래스와 구조체에서만 사용
// 일반적으로 특정 타입의 인스턴스와 연결된다
// Apple Documentation Example

struct FixedLengthRange {
    var firstValue: Int
    var length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
print("첫 번째 : \(rangeOfThreeItems)")

rangeOfThreeItems.firstValue = 6
print("두 번째 : \(rangeOfThreeItems)")

// Error -> lenght 는 let 이므로
//rangeOfThreeItems.length = 10

// let으로 secondRangeOfThreeItems를 만들어보기
var secondRangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
print("첫 번쨰 : \(secondRangeOfThreeItems)")

// Error -> secondRangeOfThreeItems를 변수가 아닌 상수로 만들어서 firstValue, length 두 값 모두 변경 불가
//secondRangeOfThreeItems.firstValue = 3

// 구조체는 value type
// 구조체의 인서턴스가 var로 선언되면 해당 구조체의 프로퍼티들을 변경할 수 있지만
// let으로 선언되면 모든 프로퍼티가 let으로 선언된 것 같이 된다

// Reference type인 클래스로 만들어보기
class ClassFixedLengthRange {
    var firstValue: Int
    var length: Int
    
    init(firstValue: Int, length: Int) {
        self.firstValue = firstValue
        self.length = length
    }
}

var classRangeOfThreeItems = ClassFixedLengthRange(firstValue: 0, length: 3)
print("\(classRangeOfThreeItems.firstValue), \(classRangeOfThreeItems.length)")

classRangeOfThreeItems.firstValue = 3
print(classRangeOfThreeItems.firstValue)

// Error -> let으로 선언하여 값 변경 불가
//classRangeOfThreeItems.length = 10

//Reference Type인 클래스도 let으로 선언된 값은 변경하지 못한다

// 클래스 인스턴스를 상수로 만들어보기
let secondClassRangeOfThreeItems = ClassFixedLengthRange(firstValue: 0, length: 3)

print("\(secondClassRangeOfThreeItems.firstValue), \(secondClassRangeOfThreeItems.length)")

secondClassRangeOfThreeItems.firstValue = 3
print("\(secondClassRangeOfThreeItems.firstValue)")

secondClassRangeOfThreeItems.length = 10
print("\(secondClassRangeOfThreeItems.length)")
