import UIKit

// 자판기 동작 오류의 종류를 표현한 열거형
enum VendingMachineError: Error {
    case invalidInput
    case insufficientFunds(moneyNeeded: Int)
    case outOfStock
}

class VendingMachine {
    
    let drinkPrice: Int = 100
    var drinkCount: Int = 5
    var deposited: Int = 0
    
    // 돈 받기 메서드
    func reciveMoney(_ money: Int) throws {
        // 입력한 돈이 0이하면 오류를 던진다
        guard money > 0 else {
            throw VendingMachineError.invalidInput
        }
        // 오류가 없으면 정상처리
        self.deposited += money
        print("\(money)원을 받음")
    }
    
    // 음료수 팔기 메서드
    func vend(numberOfDrinks numberOfDrinksToVend: Int) throws -> String {
        // 원하는 음료의 수가 잘못되었을 경우 던지는 오류
        guard numberOfDrinksToVend > 0 else {
            throw VendingMachineError.outOfStock
        }
        // 구매하려는 음료의 수량의 가격보다 미리 넣어둔 돈이 적으면 던지는 오류
        guard numberOfDrinksToVend * drinkPrice <= deposited else {
            
            let moneyNeended: Int
            moneyNeended = (numberOfDrinksToVend * drinkPrice) - deposited
            
            throw VendingMachineError.insufficientFunds(moneyNeeded: moneyNeended)
        }
        
        // 구매하려는 음료의 수량보다 요구하는 수량이 많으면 던지는 오류
        guard drinkCount >= numberOfDrinksToVend else {
            throw VendingMachineError.outOfStock
        }
        
        // 오류가 없으면 정상처리
        let totalPrice = numberOfDrinksToVend * drinkPrice
        
        self.deposited -= totalPrice
        self.drinkCount -= numberOfDrinksToVend
        
        return "\(numberOfDrinksToVend)개 제공함"
    }
}

// 자판기 인스턴스
let machine: VendingMachine = VendingMachine()

// 판매 결과를 전달받을 변수
var result: String?

do {
    try machine.reciveMoney(0)
} catch VendingMachineError.invalidInput {
    print("입력이 잘못되었습니다")
} catch VendingMachineError.insufficientFunds(let moneyNeeded) {
    print("\(moneyNeeded)원이 부족합니다")
} catch VendingMachineError.outOfStock {
    print("수량이 부족합니다")
}

do {
    try machine.reciveMoney(300)
} catch {
    switch error {
    case VendingMachineError.invalidInput:
        print("입력이 잘못되었습니다")
    case VendingMachineError.insufficientFunds(let moneyNeeded):
        print("\(moneyNeeded)원이 부족합니다")
    case VendingMachineError.outOfStock:
        print("수량이 부족합니다")
    default:
        print("알수없는 오류 \(error)")
    }
}

do {
    result = try machine.vend(numberOfDrinks: 4)
} catch {
    print(error)
}

//do {
//    result = try machine.vend(numberOfDrinks: 4)
//}

result = try? machine.vend(numberOfDrinks: 2)
result

result = try? machine.vend(numberOfDrinks: 2)
result

result = try! machine.vend(numberOfDrinks: 1)
result

// runtime error
//result = try! machine.vend(numberOfDrinks: 1)
//result
