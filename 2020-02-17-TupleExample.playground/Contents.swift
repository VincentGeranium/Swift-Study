import UIKit

/// String, Int, Double 타입을 갖는 튜플
var person: (String, Int, Double) = ("Jun", 30, 180.2)

/// 인덱스를 통해서 값을 빼 올 수 있다
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")

/// 인덱스를 통해 값을 할당할 수 있다.
person.1 = 28
person.2 = 181.3

print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")

/// String, Int, Double 타입을 갖는 튜플
var person2: (name: String, age: Int, height: Double) = ("Jun", 30, 180.2)

/// 요소의 이름을 통해서 값을 빼 올 수 있다.
print("이름: \(person2.name), 나이: \(person2.age), 신장: \(person2.height)")

/// 요소의 이름을 통해 값을 할당할 수 있다.
person2.age = 29

/// 인덱스를 통해서도 값을 할당할 수 있다.
person2.2 = 182.4

/// 기존처럼 인덱스를 이용하여 값을 빼 올 수도 있다.
print("이름: \(person2.0), 나이: \(person2.1), 신장: \(person2.2)")

typealias PersonTuple = (name: String, age: Int, height: Double)

let jun: PersonTuple = ("Jun", 30, 181.3)
let herry: PersonTuple = ("Herry", 32, 176)

print("이름: \(jun.name), 나이: \(jun.age), 신장: \(jun.height)")
print("이름: \(herry.name), 나이: \(herry.age), 신장: \(herry.height)")
