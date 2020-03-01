import UIKit

// 좌표
struct CoordinatePoint {
    var x: Int // 저장 프로퍼티
    var y: Int // 저장 프로퍼티
}

// 구조체는 기본적으로 저장 프로퍼티를 매개변수로 갖는 이니셜라이저가 있다
let junPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)

// 사람 위치 정보
class Position {
    // 저장 프로퍼티(변수) - 위치(point)는 변경될 수 있음을 뜻한다.
    var point: CoordinatePoint
    
    // 저장 프로퍼티(상수)
    let name: String
    
    // 프로퍼티 기본값을 지정해주지 않는다면 이니셜라이저를 따로 정의해주어야 한다.
    init(name: String, currentPoint: CoordinatePoint) {
        self.name = name
        self.point = currentPoint
    }
}

// 사용자정의 이니셜라이저를 호출해야만 한다.
// 그렇지 않으면 프로퍼티 초깃값을 할당할 수 없기 때문에 인스턴스 생성이 불가능하다.
let junPosition: Position = Position(name: "Jun", currentPoint: junPoint)

