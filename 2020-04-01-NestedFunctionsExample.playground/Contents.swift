import UIKit

typealias MoveFunc = (Int) -> Int

func goRight(_ currentPosition: Int) -> Int {
    return currentPosition + 1
}

func goLeft(_ currentPosition: Int) -> Int {
    return currentPosition - 1
}

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
    return shouldGoLeft ? goLeft : goRight
}

var position: Int = 3 // 현 위치

// 현 위치가 0보다 크므로 전달되는 인자 값은 true가 된다.
// 그러므로 goLeft(_:) 함수가 할당될 것이다.
let moveToZero: MoveFunc = functionForMove(position > 0)
print("Move To Zero")

// 원점에 도착하면(현 위치가 0이면) 반복문이 종료된다.
while position != 0 {
    print("\(position)...")
    position = moveToZero(position)
}
print("Here is Zero")
