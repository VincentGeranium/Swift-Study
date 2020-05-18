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

let coffee: Coffee = Coffee(shot: 1)

let myCoffee: Americano = Americano(shot: 2, iced: true)

let yourCoffee: Latte = Latte(flavor: "flat white", shot: 3)

// type(of:) 함수와 .self의 사용

print(type(of: coffee) == Coffee.self) // true
print(type(of: coffee) == Americano.self) // false
print(type(of: coffee) == Latte.self) // false

print(type(of: coffee) == Americano.self) // false
print(type(of: myCoffee) == Americano.self) // true
print(type(of: yourCoffee) == Americano.self) // false

print(type(of: coffee) == Latte.self) // false
print(type(of: myCoffee) == Latte.self) // false
print(type(of: yourCoffee) == Latte.self) // true
