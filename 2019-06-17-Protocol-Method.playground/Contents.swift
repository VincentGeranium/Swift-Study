import SwiftOverlayShims

// 메서드 요구
protocol Talkable {
    var topic: String { get set }
    func talk(to: Person)
}

struct Person: Talkable {
    var topic: String
    var name: String
    
    func talk(to: Person) {
        print("\(topic)에 대해 \(to.name )에게 이야기합니다.")
    }
}
