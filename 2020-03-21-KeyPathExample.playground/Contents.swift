import UIKit

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Stuff {
    var name: String
    var owner: Person
}

print("--------------------[키 경로 타입의 타입 확인]------------------------")
print(type(of: \Person.name))
print(type(of: \Stuff.name))
print(type(of: \Stuff.owner.name))
print(type(of: \Stuff.owner))


// 키 경로 타입의 경로 연결
let keyPath = \Stuff.owner
let nameKeyPath = keyPath.appending(path: \.name)

print("--------------------[keyPath 서브스크립트와 키 경로 활용]------------------------")

let jun = Person(name: "Jun")
let jiyeon = Person(name: "JiYeon")
let macbook = Stuff(name: "MacBook Pro", owner: jun)
var iMac = Stuff(name: "iMac", owner: jun)
let iPhone = Stuff(name: "iPhone 8 Plus", owner: jiyeon)

let stuffNameKeyPath = \Stuff.name
let ownwerKeyPath = \Stuff.owner

// \Stuff.owner.name과 같은 표현이 된다.
let ownerNameKeyPath = ownwerKeyPath.appending(path: \.name)

// 키 경로와 서브스크립트를 이용해 프로퍼티에 접근하여 값을 가져온다.
print(macbook[keyPath: stuffNameKeyPath])
print(iMac[keyPath: stuffNameKeyPath])
print(iPhone[keyPath: stuffNameKeyPath])
print(macbook[keyPath: ownerNameKeyPath])
print(iMac[keyPath: ownerNameKeyPath])
print(iPhone[keyPath: ownerNameKeyPath])

// 키 경로와 서브스크립트를 이용해 프로퍼티에 접근하여 값을 변경
iMac[keyPath: stuffNameKeyPath] = "iMac Pro"
iMac[keyPath: ownwerKeyPath] = jiyeon

print(iMac[keyPath: stuffNameKeyPath])
print(iMac[keyPath: ownerNameKeyPath])

// 상수로 지정한 값 타입과 읽기 전용 프로퍼티는 키 경로 서브스크립트로도 값을 바꿔줄 수 없다.
//macbook[keyPath: stuffNameKeyPath] = "macbook pro touch bar" // 오류 발생
//jun[keyPath: \Person.name] = "Vincent" // 오류 발생
