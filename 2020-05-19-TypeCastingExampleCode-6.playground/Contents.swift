import UIKit

class Coffee {
    let name: String
    let shot: Int
    
    var description: String {
        return "\(shot) shot(s) \(name)"
    }
    
    init(shot: Int) {
        self.shot = shot
        self.name = "Coffee"
    }
}

class Latte: Coffee {
    var flavor: String
    
    override var description: String {
        return "\(shot) shot(s) \(flavor) latte"
    }
    
    init(flavor: String, shot: Int) {
        self.flavor = flavor
        super.init(shot: shot)
    }
}

class Americano: Coffee {
    let iced: Bool
    
    override var description: String {
        return "\(shot) shot(s) \(iced ? "iced" : "hot") americano"
    }
    
    init(shot: Int, iced: Bool) {
        self.iced = iced
        super.init(shot: shot)
    }
}

// Latte 타입의 인스턴스를 참조하는 Coffee 타입 actingConstant 상수
let actingConstant: Coffee = Latte(flavor: "vanilla", shot: 2)
print(actingConstant.description) // 2 shot(s) vanilla latte

let coffee: Coffee = Coffee(shot: 1)

let myCoffee: Americano = Americano(shot: 2, iced: true)

let yourCoffee: Latte = Latte(flavor: "flat white", shot: 3)

// 다운캐스팅

if let actingOne: Americano = coffee as? Americano {
    print("This is Americano")
} else {
    print(coffee.description)
}
// 1 shot(s) Coffee

if let actingOne: Latte = coffee as? Latte {
    print("This is Latte")
} else {
    print(coffee.description)
}
// 1 shot(s) Coffee

if let actingOne: Coffee = coffee as? Coffee {
    print("This is Just Coffee")
} else {
    print(coffee.description)
}
// This is Just Coffee

if let actingOne: Americano = myCoffee as? Americano {
    print("This is Americano")
} else {
    print(coffee.description)
}
// This is Americano

if let actingOne: Latte = myCoffee as? Latte {
    print("This is Latte")
} else {
    print(coffee.description)
}
// 1 shot(s) Coffee

if let actingOne: Coffee = myCoffee as? Coffee {
    print("This is Just Coffee")
} else {
    print(coffee.description)
}
// This is Just Coffee

// Sucess
let castedCoffee: Coffee = yourCoffee as! Coffee

// 런타임 오류!! 강제 다운캐스팅 실패!
//let castedAmericano: Americano = coffee as! Americano

// 항상 성공하는 다운캐스팅
// 항상 성공한다는 것을 컴파일러도 알고 있다.
let casteddCoffee: Coffee = yourCoffee as Coffee


