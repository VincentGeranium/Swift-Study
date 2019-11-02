import UIKit


// Designated init은 Swift의 초기화 initializer
// Designated init은 클래스의 모든 프로퍼티가 초기화 될 수 있도록 해줘야한다

class Profile {
    
    var name: String
    
    var age: Int
    
    var gender: String
    
    init(name: String, age: Int, gender: String) {
        
        self.name = name
        
        self.age = age
        
        self.gender = gender
        
    }
}

let test: Profile = Profile(name: "Profile Name", age: 12, gender: "Profile Gender")
print("name: \(test.name), age: \(test.age), gender: \(test.gender)")


// 위의 Profile Class에 모든 프로퍼티가 Designated init에 의해 초기화 될 수 있게 해주었다

// 만약 위의 init에서 Profile 내에 정의된 클래스 프로퍼티 중 하나라도 빠지게 된다면
// Return from initializer without initializing all stored properties 이라는 Error 메세지를 준다
// note에는 note: 'self.gender' not initialized var gender: String 라고 친절하게 나온다

// Convenience init은 엄밀하게 말하면 "보조 이니셜라이저"라고 말 할 수있다
// 즉, 클래스의 원래 이니셜라이저인 init을 도와주는 역활이다
// Designated init의 파라미터 중 일부를 기본값으로 설정하여, Convenience init안에서 Designated init을 호출하여 초기화를 진행 할 수 있다

// 즉, conveniance init을 사용하려면 반드시 Designated init이 선언되어야 한다

// swift의 이니셜라이저 규칙이 몇가이 있는데 그 중 "conveniance init은 같은 클래스에서 다른 이니셜라이저를 호출해야한다"라는 규칙이 있다.

class Person {
    
    var personName: String
    
    var personAge: Int
    
    var personGender: String
    
    init(personName: String, personAge: Int, personGender: String) {
        
        self.personName = personName
        
        self.personAge = personAge
        
        self.personGender = personGender
    }
    
    convenience init(personAge: Int, personGender: String) {
        self.init(personName: "Jun", personAge: personAge, personGender: personGender)
    }
}

let secondTest: Person = Person(personAge: 20, personGender: "convenience init gender")

let thirdTest: Person = Person(personName: "designate name", personAge: 20, personGender: "designated gender")


print("convenience init name: \(secondTest.personName), convenience init age: \(secondTest.personAge), convenience init gender: \(secondTest.personGender)")

print("designate init name: \(thirdTest.personName), designate init age: \(thirdTest.personAge), designate init gender: \(thirdTest.personGender)")

// 위와 같이 사용이 가능하다
// convenience init으로도 사용 가능하고
// designate init으로도 사용 가능하다
