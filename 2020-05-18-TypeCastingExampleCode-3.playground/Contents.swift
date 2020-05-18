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

// 데이터 타입 확인

let coffee: Coffee = Coffee(shot: 1)
print(coffee.description) // 1 shot(s) Coffee

let myCoffee: Americano = Americano(shot: 2, iced: true)
print(myCoffee.description) // 2 shot(s) iced americano

let yourCoffee: Latte = Latte(flavor: "flat white", shot: 3)
print(yourCoffee.description) // 3 shot(s) flat white latte

print(coffee is Coffee) // true
print(coffee is Americano) // false
print(coffee is Latte) // false

print(myCoffee is Coffee) // true
print(yourCoffee is Coffee) // true

print(myCoffee is Latte) // false
print(yourCoffee is Latte) // true

