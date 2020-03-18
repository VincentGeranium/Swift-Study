import UIKit

// 타입 프로퍼티와 인스턴스 프로퍼티

class AClass {
    // 저장 타입 프로퍼티
    static var typeProperty: Int = 0
    
    // 저장 인스턴스 프로퍼티
    var instanceProperty: Int = 0 {
        didSet {
            AClass.typeProperty = instanceProperty + 100
        }
    }
    
    // 연산 타입 프로퍼티
    static var typeComputedProperty: Int {
        get {
            return typeProperty
        }
        
        set {
            print("newValue : \(newValue)")
            typeProperty = newValue
        }
    }
}

AClass.typeProperty = 123

let classInstance: AClass = AClass()
classInstance.instanceProperty = 100

print(AClass.typeProperty)
print(AClass.typeComputedProperty)
print(classInstance.instanceProperty)

AClass.typeComputedProperty = 300
print(AClass.typeComputedProperty)
print(AClass.typeProperty)
print(classInstance.instanceProperty)
