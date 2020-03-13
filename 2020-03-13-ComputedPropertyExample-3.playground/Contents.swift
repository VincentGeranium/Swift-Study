import UIKit

struct CoordinatePoint {
    var x: Int // 저장 프로퍼티
    var y: Int // 저장 프로퍼티
    
    // 대칭 좌표
    var oppositePoint: CoordinatePoint { // 연산 프로퍼티
        // 접근자
        get {
            return CoordinatePoint(x: -x, y: -y)
        }
        
        // 설정자
        set {
            x = -newValue.x
            y = -newValue.y
        }
    }
}

var junPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)

// 현재 좌표
print("현재 좌표 : \(junPosition)")

// 대칭 좌표
print("대칭 좌표 : \(junPosition.oppositePoint)")

// 대칭 좌표를 (15, 10)으로 설정
junPosition.oppositePoint = CoordinatePoint(x: 15, y: 10)

// 현재 좌표는 -15, -10으로 설정
print("현재 좌표 : \(junPosition)")
