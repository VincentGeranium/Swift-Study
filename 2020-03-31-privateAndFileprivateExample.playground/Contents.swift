import UIKit

public struct SomeType {
    private var privateVariable = 0
    fileprivate var fileprivateVariable = 0
}

// 같은 타입의 익스텐션에서는 private 요소에 접근 가능
extension SomeType {
    public func publicMethod() {
        print("privateVariable : \(self.privateVariable), fileprivateVariable : \(self.fileprivateVariable)")
    }
    
    private func privateMethod() {
        print("privateVariable : \(self.privateVariable), fileprivateVariable : \(self.fileprivateVariable)")
    }
    
    fileprivate func fileprivateMethod() {
        print("privateVariable : \(self.privateVariable), fileprivateVariable : \(self.fileprivateVariable)")
    }
}

struct AnotherType {
    var someInstance: SomeType = SomeType()
    
    mutating func someMethod() {
        // public 접근수준에는 어디서든 접근 가능
        self.someInstance.publicMethod() // privateVariable : 0, fileprivateVariable : 0
        
        // 같은 파일에 속해 있는 코드이므로 fileprivate 접근수준 요소에 접근 가능
        self.someInstance.fileprivateVariable = 100
        self.someInstance.fileprivateMethod() // privateVariable : 0, fileprivateVariable : 100
        
        // 다른 타입 내부의 코드이므로 private 요소에 접근 불가
        // 'privateVariable' is inaccessible due to 'private' protection level
//        self.someInstance.privateVariable = 100
        // 'privateMethod' is inaccessible due to 'private' protection level
//        self.someInstance.privateMethod()
    }
}

var anotherInstance = AnotherType()
anotherInstance.someMethod()
