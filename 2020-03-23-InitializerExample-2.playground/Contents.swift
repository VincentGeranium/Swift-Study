import UIKit

struct Area {
    var squareMeter: Double
    
    init() {
        squareMeter = 0.0 // squareMeter의 초깃값 할당.
    }
}

let room: Area = Area()
print(room.squareMeter)
