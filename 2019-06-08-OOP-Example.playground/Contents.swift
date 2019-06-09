import UIKit



// Human 이라는 클래스
class Human {
    
    var name: String
    var eye: String
    var nose: String
    var mouth: String
    var sex: String
    
    init(name: String, eye: String, nose: String, mouth: String, sex: String) {
        self.name = name
        self.eye = eye
        self.nose = nose
        self.mouth = mouth
        self.sex = sex
    }
}

// person1과 person2는 각각 다른 속성을 가지고 있으므로 서로 다른 객체
// person1 이라는 객체
let person1 = Human(name: "Jun", eye: "small", nose: "little bit high", mouth: "small", sex: "man")

person1.name
person1.eye
person1.nose
person1.mouth
person1.sex

// person2 이라는 객체
let person2 = Human(name: "Jennie", eye: "big", nose: "very high", mouth: "very small", sex: "woman")

person2.name
person2.eye
person2.nose
person2.mouth
person2.sex



private class Unvisible {
    
    var id: String
    var password: Int
    
    init(id: String, password: Int) {
        self.id = id
        self.password = password
    }
}

// error: 2019-06-08-OOP-Example.playground:55:5: error: constant must be declared private or fileprivate because its type 'Unvisible' uses a private type
// Unvisible 클래스가 private로 되어 있어서 접근 불가

//let myIdAndPassword = Unvisible(id: "asd", password: 123)
//myIdAndPassword.id
//myIdAndPassword.password


