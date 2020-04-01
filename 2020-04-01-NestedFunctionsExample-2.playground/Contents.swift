import UIKit

typealias MoveFunc = (Int) -> Int

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
    func goRight(_ currentPosition: Int) -> Int {
        return currentPosition + 1
    }
    
    func goLeft(_ currentPosition: Int) -> Int {
        return currentPosition - 1
    }
    
    return shouldGoLeft ? goLeft : goRight
}

var position: Int = -4 // 현 위치

// 현 위치가 0보다 작으므로 전달되는 인자 값은 false가 된다.
// 그러므로 goRight(_:) 함수가 할당될 것이다.
let moveToZero: MoveFunc = functionForMove(position > 0)

// 원점에 도착하면(현 위치가 0이면) 반복문이 종료된다.
while position != 0 {
    print("\(position)...")
    position = moveToZero(position)
}
print("원점 도착")
