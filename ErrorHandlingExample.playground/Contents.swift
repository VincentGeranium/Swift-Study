import UIKit

enum VendingMachineError: Error {
    case invalidInput
    case insufficientFunds(moneyNeeded: Int)
    case outOfStock
}

class VendingMachine {
    let drinkPrice: Int = 100
    var drinkCount: Int = 5
    var deposited: Int = 0
    
    // 돈을 받는 메서드
    
    func receiveMoney(_ money: Int) throws {
        // 입력한 돈이 0이하면 오류를 던진다
        guard money > 0 else {
            throw VendingMachineError.invalidInput
        }
        
        // 오류가 없으면 정상처리
        self.deposited += money
        print("\(money)원을 받음")
    }
    
    // 물건 팔기 메서드
   func vend(numberOfDrinks numberOfDrinksToVend: Int) throws -> String {
        
        // 원하는 드링크의 수량이 잘못 입력되었으면 오류를 던진다
        guard numberOfDrinksToVend > 0 else {
            throw VendingMachineError.outOfStock
        }
        
        // 구매하려는 수량의 가격보다 미리 넣어둔 돈이 적으면 오류를 던진다
        guard numberOfDrinksToVend * drinkPrice <= deposited else {
            
            let moneyNeeded: Int
            moneyNeeded = (numberOfDrinksToVend * drinkPrice) - deposited
            
            throw VendingMachineError.insufficientFunds(moneyNeeded: moneyNeeded)
        }
        
        // 구매하려는 수량보다 요구하는 수량이 많으면 오류를 던진다
        guard drinkCount >= numberOfDrinksToVend else {
            throw VendingMachineError.outOfStock
        }
        
        // 오류가 겂으면 정상처리
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


