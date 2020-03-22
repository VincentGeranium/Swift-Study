import UIKit

class LevelClass {
    // 현재 레벨을 저장하는 저장 프로퍼티
    var level: Int = 0 {
        didSet { // 값이 변경된 직후에 호출하는 didSet 메서드 (Property Observer)
            print("Level이 \(oldValue)에서 \(level)로 변했습니다")
        }
    }
    
    // 레벨이 올랐을 때 호출하는 메서드
    func levelUp() {
        print("Level Up!")
        level += 1
    }
    
    // 레벨이 감소했을 떄 호출할 메서드
    func levelDown() {
        print("Level Down...")
        level -= 1
        if level < 0 {
            reset()
        }
    }
    
    // 레벨을 초기화할 때 호출할 메서드
    func reset() {
        print("Reset!")
        level = 0
    }
    
    // 특정 레벨로 이동할 때 호출할 메서드
    func jumpLevel(to: Int) {
        print("Jump to \(to) level")
        level = to
    }
}

var levelClassInstance: LevelClass = LevelClass()
levelClassInstance.levelUp()
levelClassInstance.levelDown()
levelClassInstance.levelDown()
levelClassInstance.jumpLevel(to: 5)
