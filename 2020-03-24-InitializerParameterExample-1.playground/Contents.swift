import UIKit

struct Area {
    var squareMeter: Double
    
    // 첫 번째 이니셜라이저
    init(fromPy py: Double) {
        squareMeter = py * 3.3058
    }
    
    // 두 번째 이니셜라이저
    init(fromSquareMeter squareMeter: Double) {
        self.squareMeter = squareMeter
    }
    
    // 세 번째 이니셜라이저
    init(value: Double) {
        squareMeter = value
    }
    
    // 네 번째 이니셜라이저
    init(_ value: Double) {
        squareMeter = value
    }
}

let roomOne: Area = Area(fromPy: 15.0)
print(roomOne.squareMeter)

let roomTwo: Area = Area(fromSquareMeter: 33.06)
print(roomTwo.squareMeter)

let roomThree: Area = Area(value: 30.0)
let roomFounr: Area = Area(55.0)

// 오류 발생 -> note: overloads for 'Area' exist with these partially matching parameter lists: (Double), (fromPy: Double), (fromSquareMeter: Double), (value: Double)
//Area()
