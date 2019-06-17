import SwiftOverlayShims

protocol Talkable {
    var topic: String { get set }
    func talk(to: Person)
    init(name: String, topic: String)
}

struct Person: Talkable {
    var topic: String
    var name: String
    
    func talk(to: Person) {
        print("\(topic)에 대해 \(to.name)에게 이야기합니다")
    }
    
    init(name: String, topic: String) {
        self.name = name
        self.topic = topic
    }
}

let Jun: Person = Person(name: "준", topic: "스위프트")
let Vincent: Person = Person(name: "빈센트", topic: "코딩")

Jun.talk(to: Vincent)
