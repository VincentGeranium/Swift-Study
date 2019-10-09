import UIKit

// Type Methods

// 인스턴스 메소드는 특정 타입의 인스턴스에 호출되는 메소드

// 타입 자체에서 호출되는 메소드는 타입 메소드라고 한다

// func 앞에 "static" 키워드를 작성하여 타입 메소드를 나타낸다

// 클래스는 "class" 키워드를 사용하여 하위 클래스가 슈퍼클래스의 해당 메소드 구현을 재정의(override) 할 수 있도록 허용할 수 있다

// Swift에서는 모든 클래스, 구조 및 열거형에 대해 타입-레벨(type-level)메소드를 정의 할 수 있다

// 각 타입 메소드는 명시적으로 지원하는 타입으로 범위가 지정된다

// 타입 메소드는 인스턴스 메소드처럼 .(dot)으로 호출된다.

// 그러나 인스턴스로 메소드를 호출하는 것이 아니라, 타입으로 호출한다

class SomeClass {
    
    static func otherTypeMethod() {
        // code
        
    }
    
    class func someTypeMethod() {
        
        // code
        
    }
}

SomeClass.someTypeMethod()

SomeClass.otherTypeMethod()

// SomeClass 라는 클래스는 2개의 메소드가 있다

// func앞에 "static"과 "class" 키워드가 붙어있다. 즉, 타입 메소드

// SomeClass의 인스턴스를 생성하지 않고도, 바로 "타입"을 통해 메소드를 호출하였다

//SomeClass.someTypeMethod() 그리고 SomeClass.otherTypeMethod() 이렇게

// "class"라는 키워드가 붙으면 해당 클래스를 상속받는 자식클래스가 해당 타입 메소드를 재정의 할 수 있다.

class ChildClass: SomeClass {
    override static func someTypeMethod() {
        // code
    }
}

// ChildeClass 라는 클래스가 SomeClass를 상속받았다
// 그리고 SomeClass내에 구현된 타입 메소드인 someTypeMethod()를 재정의(override)하였다
// 재정을 할때는 override static를 붙여주는것을 잊어선 안된다

// 타입 메소드의 본문 내에서 암시적인(implicit) self 프로퍼티는 해당 타입의 인스턴스가 아니라, "타입 자체를 참조"한다

// 즉, 인스턴스 프로퍼티 및 인스턴스 메소드 매개변수와 마찬가지로 self 를 사용하여 타입 프로퍼티와 타입 메소드 매개변수 사이의 모호성을 제거 할 수 있다.

// 보다 일반적으로, 타입 메소드의 본문 내에서 사용되는 규정되지 않는 메소드 및 프로퍼티 이름은 다름 타입-수준(type-level) 메소드 및 프로퍼티를 참조한다

// 타입 메소드는 타입 이름 앞에 접두어를 붙일 필요 없이 다른 메소드의 이름으로 다른 타입 메소드를 호출 할 수 있다

// 비슷하게, 구조체와 열거형의 타입 메소드는 타입 이름 접두사 없이 프로퍼티 이름을 사용하여 타입 프로퍼티에 접근할 수 있다

// 아래의 예제에 대한 사전 설명

// LevelTracker라는 이름을 가진 구조체가 있다. 이 구조체는 게임의 단계를 통해 플레이어의 진행 상황을 추적할 수 있는 구조체이다
// 싱글 플레이 게임이지만, 여러 플레이어에 대한 정보를 하나의 디바이스에 저장 할 수 있다
// 게임레벨(레벨 1과 별도)은 게임이 처음 실행될 때 잠겨진다
// 플레이어가 레벨을 완료할 때마다 해당 레벨이 디바이스의 모든 플레이어에 대해 잠금이 해제된다
// LevelTracker 구조체는 타입 프로퍼티와 메소드를 사용하여 잠금해제 된 게임 레벨을 추적한다
// 또한 개별 플레이어의 현재 레벨을 추적한다

struct LevelTracker {
    
    static var highestUnlockedLevel = 1
    
    var currentLevel = 1
    
    static func unlock(_ level: Int) {
        
        if level > highestUnlockedLevel {
            
            highestUnlockedLevel = level
            
        }
        
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        
        return level <= highestUnlockedLevel
        
    }
    
    @discardableResult
    
    // mutating이므로 value type인 struct의 프로퍼티를 변경할 수 있다.
    mutating func advance(to level: Int) -> Bool {
        
        // 타입으로 바로 접근해서 참조 => isUnlocked이 타입 메소드이므로
        if LevelTracker.isUnlocked(level) {
            
            currentLevel = level
            
            return true
            
        } else {
            
             return false
            
        }
        
    }
    
}

// LevelTracker 구조체는 모든 플레이가 잠금해제한 최고 레벨을 추적한다 (위의 예제에서 highestUnlockedLevel)

// LevelTracker는 highestUnlockedLevel 프로퍼티를 사용하여 작업할 두가지 타입 메소드도 정의했다. 앞에 "static" 키워드가 붙은 것을 보면 알 수 있다

// 첫번째는 unlock(_ :)이라는 타입 메소드이다. 새로운 레벨이 잠금 해제 될 때 마다 highestUnlockedLevel의 값을 업데이트 한다

// 두번째는 isUnlocked(_ :)이라는 편리한 타입 메소드로 특정 레벨 번호가 이미 잠금 해제되어 있으면, true를 반환한다

// 이러한 타입메소드(위 두가지 타입 메소드)는 highestUnlockedLevel 타입 프로퍼티에 접근 할 수 있으므로 LevelTracker.highestUnlockedLevel로 작성할 필요가 없다

// LevelTracker는 타입 프로퍼티 및 타입 메소드 외에도 개별 플레이어의 게임 진행상황을 추적한다

// currentLevel 프로퍼티를 관리할 수 있도록, advance(to :)라는 인스턴스 메소드를 정의한다

// currentLevel을 업데이트 하기 전에 이 메소드는 요청된 새 레벨이 이미 잠금해제 되어있는지 확인한다

// advance(to :) 메소드는 실제로 currentLevel을 설정할 수 있는지 여부를 나타내는 Bool 값을 반환한다

// advance(to :) 메소드에서 반환값을 무시하는 코드는 반드시 실수(mistake)가 없기 때문에, 이 함수는 @discardableResult 특성으로 표시 되어 있다

// @discardableResult는 결과를 사용하지 않고, 값을 리턴하는 함수 또는 메소드가 호출될때 컴파일러 경고를 표시하지 않을때 사용

// LevelTracker 구조체는 아래에 나올 Player 클래스와 함께 사용되어 개별 플레이어의 진행상황을 추적하고 업데이트한다

class Player {
    
    var tracker = LevelTracker()
    
    let playerName: String
    
    func complete(level: Int) {
        
        LevelTracker.unlock(level + 1)
        
        tracker.advance(to: level + 1)
        
    }
    
    init(name: String) {
        playerName = name
    }
}

// Player라는 클래스 안에는 tracker가 있는데 이것은 LevelTracker의 인스턴스이다

// playerName은 기본값이 없으니 init을 만들어주었다

// Player 클래스 안에는 complete라는 인스턴스 메소드가 있다
// unlock은 타입 메소드였으니 LevelTracker 타입 자체로 참조
// 반면에 advance는 LevelTracker의 인스턴스 메소드였으니 LevelTracker의 인스턴스인 tracker로 접근해야한다

// Player class에 대한 애플의 설명

// Player 클래스는 해당 플레이어의 진행상황을 추적하기 위해 LevelTracker의 새인스턴스를 만든다
// 또한 플레이어가 특정 레벨을 완료할 때 마다 호출되는 complete(level:) 메소드를 제공한다
// 이 메소드는 모든 플레이어의 다음 레벨을 잠금 해제하고 플레이어의 진행상황을 업데이트하여 다음 레벨로 이동시킨다
// 이전 줄의 LevelTracker.unlock(_ :)을 호출하여 레벨이 잠금 해제 된 것으로 알려져있으므로 advance(to:)반환값은 무시된다

var player = Player(name: "Jun")

player.complete(level: 1)

print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")

// Jun라는 이름을 가진 플레이어가 레벨 1을 완료했다
// 이제 레벨 2가 열려야한다 그러므로 highestUnlockedLevel이 2가 된다

player = Player(name: "Yeon")

if player.tracker.advance(to: 6) {
    print("player is now on level 6")
} else {
    print("level 6 has not yet been unlocked")
}

// Yeon이라는 이름을 가진 플레이가 생성되었다. 하지만 현재 highestUnlockedLevel은 2이기 때문에 Yeon은 6레벨로 갈 수 없다
