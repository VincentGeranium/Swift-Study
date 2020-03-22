import UIKit

class LevelClass {
    var level: Int = 0
    
    func jumpLevel(to level: Int) {
        print("Jump to \(level)")
        self.level = level
    }
}

var levelClassInstance: LevelClass = LevelClass()
print("처음 level은 \(levelClassInstance.level)")

// jump Level
levelClassInstance.jumpLevel(to: 3)
