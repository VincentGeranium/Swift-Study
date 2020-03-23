import UIKit

// 시스템 음량은 한 기기에서 유일한 값이어야 한다.
struct SystemVolume {
    // 타입 프로퍼티를 사용하면 언제나 유일한 값이 된다.
    static var volume: Int = 5
    
    // 타입 프로퍼티를 제어하기 위해 타입 메서드를 사용한다.
    static func mute() {
        self.volume = 0 // SystemVolume.volume = 0과 동일한 표현이다.
    }
}

// 내비게이션 역활은 여러 인스턴스가 수행할 수 있다.
class Navigation {
    
    // 내비게이션 인스턴스마다 음량은 따로 설정할 수 있다.
    var volume: Int = 5
    
    // 길 안내 음성 재생
    func guideWay() {
        // 내비게이션 외 다른 재생원 음소거
        SystemVolume.mute()
    }
    
    // 길 안내 음성 종료
    func finishGuideWay() {
        // 기존 재생원 음량 복구
        SystemVolume.volume = self.volume
    }
}

SystemVolume.volume = 10

let myNavi: Navigation = Navigation()

myNavi.guideWay()
print(SystemVolume.volume)

myNavi.finishGuideWay()
print(SystemVolume.volume)
