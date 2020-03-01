import UIKit

// 좌표
struct CoordinatePoint {
    var x: Int = 0 // 저장 프로퍼티
    var y: Int = 0 // 저장 프로퍼티
}

// 프로퍼티의 초깃값을 할당했다면 굳이 전달인자로 초깃값을 넘길 필요가 없다
let junPoint: CoordinatePoint = CoordinatePoint()

// 기존에 초깃값을 할당할 수 있는 이니셜라이저도 사용 가능하다
let wizplanPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)

print("Jun's Point : \(junPoint.x), \(junPoint.y)") // Jun's Point : 0, 0

print("wizplan's Point : \(wizplanPoint.x), \(wizplanPoint.y)") // wizplan's Point : 10, 5

// 사람의 위치 정보
class Position {
    var point: CoordinatePoint = CoordinatePoint() // 저장 프로퍼티
    var name: String = "Unknown" // 저장 프로퍼티
}

// 초기값을 지정해 줬다면 사용자정의 이니셜라이저를 사용하지 않아도 된다.
let junPosition: Position = Position()

junPosition.point = junPoint
junPosition.name = "Jun"
