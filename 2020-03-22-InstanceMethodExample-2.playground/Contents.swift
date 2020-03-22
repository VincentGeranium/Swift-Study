import UIKit

struct LevelStruct {
    var level: Int = 0 {
        didSet {
            print("Level이 \(oldValue)에서 \(level)로 변경되었습니다.")
        }
        willSet {
            print("Level이 \(level)에서 \(newValue)로 변경될 예정입니다.")
        }
    }
    
    mutating func levelUp() {
        print("Level Up!")
        level += 1
    }
    
    mutating func levelDown() {
        print("Level Down...")
        level -= 1
        if level < 0 {
            resetLevel()
        }
    }
    
    mutating func resetLevel() {
        print("Level Reset")
        level = 0
    }
    
    mutating func jumpLevel(to: Int) {
        print("Jump to \(to) level")
        level = to
    }
}

var levelStructInstace: LevelStruct = LevelStruct()
levelStructInstace.levelUp()
levelStructInstace.levelDown()
levelStructInstace.levelDown()
levelStructInstace.jumpLevel(to: 3)
