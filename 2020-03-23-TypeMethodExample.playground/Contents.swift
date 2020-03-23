import UIKit

class AClass {
    static func staticTypeMethod() {
        print("AClass staticTypeMethod Called...")
    }
    
    class func classTypeMethod() {
        print("AClass classTypeMethod Called...")
    }
}

class BClass: AClass {
    // 오류 발생 -> error: cannot override static method
    // 재정의 불가
//    override static func staticTypeMethod() {
//
//    }
    
    override class func classTypeMethod() {
        print("BClass classTypeMethod Called...")
    }
}

AClass.staticTypeMethod()
AClass.classTypeMethod()
BClass.classTypeMethod()
