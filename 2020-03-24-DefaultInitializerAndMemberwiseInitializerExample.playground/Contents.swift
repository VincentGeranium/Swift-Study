import UIKit

// Memberwise Initializer of Structure
struct Point {
    var x: Double = 0.0
    var y: Double = 0.0
}

struct Size {
    var width: Double = 0.0
    var height: Double = 0.0
}

let point: Point = Point(x: 10.2, y: 10.5)
let size: Size = Size(width: 50.0, height: 50.0)

// Default Initializer of Class
class Person {
    let name: String = "Jun"
}

let jun: Person = Person()
print(jun.name)
