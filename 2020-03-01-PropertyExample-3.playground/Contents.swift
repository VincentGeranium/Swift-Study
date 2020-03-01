import UIKit

// 좌표
struct CoordinatePoint {
    // 위치는 x, y 값이 모두 있어야 하므로 옵셔널이면 안된다.
    var x: Int
    var y: Int
}

// 사람의 위치 정보
class Position {
    // 현재 사람의 위치를 모를 수도 있다. - 옵셔널
    var point: CoordinatePoint?
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

// 이름은 필수지만 위치는 모를 수도 있다.
let junPosition: Position = Position(name: "Jun")

// 위치를 알게되면 그 때 위치 값을 할당해준다.
junPosition.point = CoordinatePoint(x: 20, y: 10)
