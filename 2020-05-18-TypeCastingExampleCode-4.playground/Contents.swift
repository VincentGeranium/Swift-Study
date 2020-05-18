import UIKit

protocol SomeProtocol { }
class SomeClass { }

// Int 타입을 값으로 표현한 값 = Int.self
// Int 타입의 메타 타입 = Int.Type
let intType: Int.Type = Int.self

// String 타입을 값으로 표현한 값 = String.self
// String 타입의 메타 타입 = String.Type
let stringType: String.Type = String.self

// SomeClass 타입을 값으로 표현한 값 = SomeClass.self
// SomeClass 타입의 메타 타입 = SomeClass.Type
let classType: SomeClass.Type = SomeClass.self

// SomeProtocol 타입을 값으로 표현한 값 = SomeProtocol.self
// SomeProtocol 타입의 메타 타입 = SomeProtocol.Protocol
let protocolProtocol: SomeProtocol.Protocol = SomeProtocol.self

var someType: Any.Type

someType = intType
print(someType) // Int

someType = stringType
print(someType) // String

someType = classType
print(someType) // SomeClass

someType = protocolProtocol
print(someType) // SomeProtocol

