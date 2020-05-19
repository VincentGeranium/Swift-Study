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

let actingConstant: Coffee = Latte(flavor: "vanilla", shot: 2)

let coffee: Coffee = Coffee(shot: 1)

let myCoffee: Americano = Americano(shot: 2, iced: true)

let yourCoffee: Latte = Latte(flavor: "flat white", shot: 3)

// 클래스의 인스턴스만 수용할 수 있는 AnyObject의 활용
// AnyObject의 타입 확인

func checkType(of item: AnyObject) {
    if item is Latte {
        print("item is Latte")
    } else if item is Americano {
        print("item is Amricano")
    } else if item is Coffee {
        print("item is Coffee")
    } else {
        print("Unknown Type")
    }
}

checkType(of: coffee) // item is Coffee
checkType(of: myCoffee) // item is Americano
checkType(of: yourCoffee) // item is Latte
checkType(of: actingConstant) // item is Latte

// AnyObject의 타입캐스팅
func castTypeToAppropriate(item: AnyObject) {
    if let castedItem: Latte = item as? Latte {
        print(castedItem.description)
    } else if let castedItem: Americano = item as? Americano {
        print(castedItem.description)
    } else if let castedItem: Coffee = item as? Coffee {
        print(castedItem.description)
    } else {
        print("Unknown Type")
    }
}

castTypeToAppropriate(item: coffee) // 1 shot(s) Coffee
castTypeToAppropriate(item: myCoffee) // 2 shot(s) iced americano
castTypeToAppropriate(item: yourCoffee) // 3 shot(s) flat white latte
castTypeToAppropriate(item: actingConstant) // 2 shot(s) vanilla latte

// Any의 타입캐스팅
func checkAnyType(of item: Any) {
    switch item {
    case 0 as Int:
        print("Zero as an Int")
    case 0 as Double:
        print("Zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let(x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let latte as Latte:
        print(latte.description)
    case let stringConverter as (String) -> String:
        print(stringConverter("Jun"))
    case is Double:
        print("some other double value that I don't want to print")
    default:
        print("something else : \(type(of: item))")
    }
}

checkAnyType(of: 0) // Zero as an Int
checkAnyType(of: 0.0) // Zero as a Double
checkAnyType(of: 42) // an integer value of 42
checkAnyType(of: 3.141592) // a positive double value of 3.141592
checkAnyType(of: -0.25) // some other double value that I don't want to print
checkAnyType(of: "Hello") // a string value of "Hello"
checkAnyType(of: (3.5, 5.5)) // an (x, y) point at 3.5, 5.5
checkAnyType(of: yourCoffee) // 3 shot(s) flat white latte
checkAnyType(of: coffee) // something else : Coffee
checkAnyType(of: {(name: String) -> String in "Hello, \(name)"}) // Hello, Jun

