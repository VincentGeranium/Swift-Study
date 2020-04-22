import UIKit


// 프로토콜의 상속

protocol Readable {
    func read()
}

protocol Writeable {
    func write()
}

protocol ReadSpeakable: Readable {
    func speak()
}

protocol ReadWriteSpeakable: Readable, Writeable {
    func speak()
}

class SomeClass: ReadWriteSpeakable {
    func speak() {
        print("Speak")
    }
    
    func read() {
        print("Read")
    }
    
    func write() {
        print("Write")
    }
}

// 클래스 전용 프로토콜의 정의

protocol ClassOnlyProtocol: class, Readable, Writeable {
    // 추가 요구사항
}

class AnotherSomeClass: ClassOnlyProtocol {
    func read() { }
    func write() { }
}

// Error !! -> ClassOnlyProtocol 프로토콜은 클래스 타입에만 채택이 가능하다.
//struct SomeStruct: ClassOnlyProtocol {
//    func read() { }
//    func write() { }
//}


// 프로토콜 조합 및 프로토콜, 클래스 조합

protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Person: Named, Aged {
    var name: String
    var age: Int
}

class Car: Named {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Truck: Car, Aged {
    var age: Int
    
    init(name: String, age: Int) {
        self.age = age
        super.init(name: name)
    }
}

func celebrateBirthday(to celebrator: Named & Aged) {
    print("Happy birthday \(celebrator.name)!! Now you are \(celebrator.age)")
}

let jun: Person = Person(name: "Jun", age: 99)
celebrateBirthday(to: jun) // Happy birthday Jun!! Now you are 99

let myCar: Car = Car(name: "Voong Voong")
// Error: argument type 'Car' does not conform to expected type 'Aged' -> Aged를 충족시키지 못한다.
// celebrateBirthday(to: myCar)

// 클래스 & 프로토콜 조합에서 클래스 타입은 한 타입만 조합할 수 있다.
// error: protocol-constrained type cannot contain class 'Truck' because it already contains class 'Car'
// var someVariable: Car & Truck & Aged

// Car 클래스의 인스턴스 역활도 수행할 수 있고, Aged 프로토콜을 준수하는 인스턴스만 할당할 수 있다.
var someVariable: Car & Aged

// Truck 인스턴스는 Car 클래스 역활도 할 수 있고 Aged 프로토콜도 준수하므로 할당할 수 있다.
// someVariable = Truck(name: "Truck", age: 5)

// Car 인스턴스인 myCar는 Aged 프로토콜을 준수하지 않으므로 할당할 수 없다.
// error: value of type 'Car' does not conform to 'Car & Aged' in assignment
// someVariable = myCar

// 프로토콜 캐스팅

print(jun is Named) // true
print(jun is Aged) // true

print(myCar is Named) // true
print(myCar is Aged) // false

if let castedInstance: Named = jun as? Named {
    print("\(castedInstance) is Named")
} // Person is Named

if let castedInstance: Aged = jun as? Aged {
    print("\(castedInstance) is Aged")
} // Person is Aged

if let castedInstance: Named = myCar as? Named {
    print("\(castedInstance) is Named")
} // Car is Named

if let castedInstance: Aged = myCar as? Aged {
    print("\(castedInstance) is Aged")
} // 출력 없음, 캐스팅 실패

