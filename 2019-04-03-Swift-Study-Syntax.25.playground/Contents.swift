import UIKit

// 타입케스팅은 인스턴스의 타입을 확인하거나, 인스턴스의 타입을 슈퍼 클래스 또는 서브 클래스 타입처럼 다루기 위해 사용한다
// 스위프트에서 타입 캐스팅은 "is"와 "as"라는 연산자로 구현 가능
// 이 두 연산자는 값의 타입을 확인하거나, 겂을 다른 타입으로 변환하는 간단하고 표현적인 방법을 제공

// 타입 확인 - type(of:)

type(of: 1)
type(of: 2.0)
type(of: "A")
type(of: true)

// Any -  스위프트의 모든 타입을 지칭하는 키워드
let anyTypeOfArray:[Any] = [1,2.0,"A",true]
type(of: anyTypeOfArray)
type(of: anyTypeOfArray[0])
type(of: anyTypeOfArray[1])
type(of: anyTypeOfArray[2])
type(of: anyTypeOfArray[3])

// Generic - Swift의 강력한 도구중에 하나, Swift 표준 라이브러리 대부분은 Genetic으로 작성
// 예로 Swift의 Array[배열]와 Dictionary[사전]은 Generic Collection

func genericPrint<T>(_ value: T) {
    let types = type(of: value)
    print("\(value)의 타입인 \(types)입니다")
}

genericPrint("asd")
genericPrint(123)
genericPrint(12.4)
genericPrint(true)

// 타입 비교 - is
// 객체 is 객체의 타입 -> True or False

let arrayOfString = ["A", "B", "C"]

if arrayOfString[0] is String {
    "String"
} else {
    "Not String"
}

if arrayOfString[0] is Int {
    "Int"
} else {
    "Not Int"
}

let stringArray:[String] = ["A","B","C"]

if stringArray[0] is Int {
    print("Int 타입의 Array 입니다")
} else if stringArray[0] is Double {
    print("Double 타입의 Array 입니다")
} else if stringArray[0] is String {
    print("String 타입의 Array 입니다")
} else {
    print("타입을 알 수 없습니다")
}

let anyArr: [Any] = [1, 2.0, "3"]

for data in anyArr {
    if data is Int {
        print("이 데이터는 Int 타입의 :", data)
    } else if data is Double {
        print("이 데이터는 Double 타입의 :", data)
    } else if data is String {
        print("이 데이터는 String 타입의 :", data)
    } else {
        print("Int, Double, String 타입 외의 타입입니다")
    }
}

// 상속 관계 - is
// 상속 관계인지 아닌지도 is로 확인이 가능하다
// 자식 클래스 is 부모 클래스 = true , 부모 클래스 is 자식 클래스 = fasle , 자기 자신 is 자기 자신 = true

class Human {
    var name: String = "name"
}

class Baby: Human {
    var age: Int = 1
}

class Student: Human {
    var school: String = "school"
}

class UniversityStudent: Student {
    var univName: String = "Univ"
}

class Dog {
    var bark: String = "BowWow"
}

let student = Student()
student is Human
student is Baby
student is Student
student is UniversityStudent

let univStudent = UniversityStudent()
univStudent is Human
univStudent is Baby
univStudent is Student
univStudent is UniversityStudent

let arrayBaby = [Baby()]
type(of: arrayBaby)

//let arrayAll = [Human(), Baby(), Student(), UniversityStudent(), Dog()] // error Dog는 Human 클래스와 상관이 없는 클래스

let arrayAll = [Human(), Baby(), Student(), UniversityStudent()]
type(of: arrayAll)

arrayAll[0] is Human
arrayAll[0] is Baby
arrayAll[0] is Student
arrayAll[0] is UniversityStudent

arrayAll[1] is Human
arrayAll[1] is Baby
arrayAll[1] is Student
arrayAll[1] is UniversityStudent

arrayAll[2] is Human
arrayAll[2] is Baby
arrayAll[2] is Student
arrayAll[2] is UniversityStudent

arrayAll[3] is Human
arrayAll[3] is Baby
arrayAll[3] is Student
arrayAll[3] is UniversityStudent

var human: Human = Student()
type(of: human)
