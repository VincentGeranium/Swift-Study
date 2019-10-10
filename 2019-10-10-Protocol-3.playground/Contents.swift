import UIKit

// 1. Protocol as Types

// 타입으로서의 "프로토콜"

// 프로토콜은 기능을 구현하지 않는다. 그럼에도 불구하고, 만드는 프로토콜은 코드에서 사용하는 완전한 형태이다

// 그 이유는 프로토콜은 "타입"이기 때문이다

// 프로토콜은 다른 타입이 형용되는 여러 곳에서 다음과 같은 프로토콜을 사용할 수 있다

// 1) 함수, 메소드 또는 이니셜라이저에서의 매개변수 타입 또는 리턴타입

// 2) 상수(constant), 변수(variable)또는 프로퍼티로서의 타입

// 3) 배열 또는 사전 또는 다른 컨테이너의 항목으로서의 타입

// 프로토콜은 타입이기 때문에, 대문자로 이름을 시작하여 Swift에서 다른 타입의 이름(EX: Int, String 및 Double)과 일치시킨다

protocol RandomNumberGenerator {
    
    func random() -> Double
    
}

// random() 메소드를 요구한 프로토콜 RandomNumberGenerator

// 이 RandomNumberGenerator을 채택하는 타입들은 반드시 저 random이라는 메소드를 구현해야한다

// 타입으로서의 프로토콜 예제
class LinearCongruentialGenerator: RandomNumberGenerator {
    
    var lastRandom = 42.0
    
    let m = 139968.0
    
    let a = 3877.0
    
    let c = 29573.0

    func random() -> Double {
        
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
        
        return lastRandom / m
    }
    
}

class Dice {
    
    let sides: Int
    
    let generator: RandomNumberGenerator
    
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    
    func roll() -> Int {
        
        return Int(generator.random() * Double(sides)) + 1
    }
    
}

var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())

for _ in 1...5 {
    print("Random dice roll is \(d6.roll())")
}

// Dice라는 클래스를 정의

// Dice 클래스는 RandomNumberGenerator라는 프로토콜을 채택하지 않앗음

// 대신 generator라는 상수(constant) 저장 프로퍼티를 선언하고 타입을 RandomNumberGenerator라고 했다

// 그리고 클래스 저장 프로퍼티들에 기본값이 없어서, init을 만들어주었다

// generators는 RandomNumberGenerator 타입이기 때문에, random() 이라는 메소드를 구현해줘야 할 의무는 없다. 그냥 random()에 접근할 수 있게 되었다
