import UIKit

class LevelClass {
    var level: Int = 0
    
    func reset() {
        // Error !! self 프로퍼티 참조 변경 불가!!
//        self = LevelClass()
    }
}

struct LevelStruct {
    var level: Int = 0 {
        didSet {
            print("Level \(self.level)")
        }
    }
    
    mutating func levelUp() {
        print("Level Up!")
        level += 1
    }
    
    mutating func reset() {
        print("Reset!")
        self = LevelStruct()
    }
}

var levelStructInstance: LevelStruct = LevelStruct()
levelStructInstance.levelUp()
levelStructInstance.reset()
print(levelStructInstance.level)

enum OnOffSwitch {
    case on
    case off
    
    mutating func nextState() {
        self = self == .on ? .off : .on
    }
}

var toggle: OnOffSwitch = OnOffSwitch.off
toggle.nextState()
print(toggle)
