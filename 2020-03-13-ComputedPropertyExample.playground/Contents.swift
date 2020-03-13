import UIKit

struct CoordinatePoint {
    var x: Int // 저장 프로퍼티
    var y: Int // 저장 프로퍼티
    
    // 대칭점을 구하는 메서드 - 접근자
    func oppositePoint() -> CoordinatePoint {
        return CoordinatePoint(x: -x, y: -y)
    }
    
    // 대칭점을 설정하는 메서드 - 설정자
    mutating func setOppositePoint(_ opposite: CoordinatePoint) {
        x = -opposite.x
        y = -opposite.y
    }
}

var junPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)

// 헌재 좌표
print("현재 좌표 : \(junPosition)")

// 대칭 좌표
print("대칭 좌표 : \(junPosition.oppositePoint())")

// 대칭 좌표를 (15, 10)으로 설정
junPosition.setOppositePoint(CoordinatePoint(x: 15, y: 10))

// 현재 좌표는 -15, -10 으로 설정
print("현재 좌표 : \(junPosition)")
