import UIKit

// call by value = Enum, Struct

// call by reference = Class

struct Point {
    
    var x = 0.0
    
    var y = 0.0
    
}

let point = Point.init()

var comparePoint = point

comparePoint.x = 5

print("comparePoint.x : \(comparePoint.x), point.x : \(point.x)")

// comparePoint에 point를 "복사"해서 comparePoint에만 값을 넣어주었기 때문에 comparePoint.x : 5.0, point.x : 0.0

class ClassPoint {
    
    var x = 0.0
    
    var y = 0.0
    
}

let classPoint = ClassPoint.init()

var compareClassPoint = classPoint

compareClassPoint.x = 5

print("compareClassPoint.x : \(compareClassPoint.x), classPoint.x : \(classPoint.x)")

// compareClassPoint, classPoint 둘다 같은 메모리에 있는 "원본"을 접근하게 된다 때문에 compareClassPoint.x : 5.0, classPoint.x : 5.0
