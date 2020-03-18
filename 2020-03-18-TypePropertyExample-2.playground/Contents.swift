import UIKit

class Account {
    static let dollarExchangeRate: Double = 1000.0 // 타입 상수
    
    var credit: Int = 0 // 저장 인스턴스 프로퍼티
    var dollarValue: Double { // 연산 인스턴스 프로퍼티
        get {
            return Double(credit) / Account.dollarExchangeRate
        }
        
        set {
            credit = Int(newValue * Account.dollarExchangeRate)
            print("잔액을 \(newValue)달러로 변경하는 중이입다.")
        }
    }
}

print(Account.dollarExchangeRate)

let myAccount: Account = Account()
myAccount.credit = 1000
print(myAccount.credit)
print(myAccount.dollarValue)

print(Account.dollarExchangeRate)

myAccount.dollarValue = 20
print(myAccount.credit)
print(myAccount.dollarValue)

