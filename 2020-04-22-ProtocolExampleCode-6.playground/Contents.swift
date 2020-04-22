import UIKit

import Foundation

@objc protocol Moveable {
    func walk()
    @objc optional func fly()
}

// 걷기만 할 수 있는 호랑이
class Tiger: NSObject, Moveable {
    func walk() {
        print("Tiger walks")
    }
}

// 걷고 날 수 있는 새
class Bird: NSObject, Moveable {
    func walk() {
        print("Bird walks")
    }
    
    func fly() {
        print("Bird flys")
    }
}

let tiger: Tiger = Tiger()
let bird: Bird = Bird()

tiger.walk() // Tiger walks
bird.walk() // Bird walks
bird.fly() // Bird flys

var moveableInstance: Moveable = tiger
moveableInstance.fly?() // 응답 없음

moveableInstance = bird
moveableInstance.fly?() // Bird flys


