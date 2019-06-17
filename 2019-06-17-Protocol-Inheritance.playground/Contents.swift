import UIKit
import SwiftOverlayShims

protocol Readable {
    func read()
}

protocol Writeable {
    func write()
}

protocol ReadWriteSpeakable: Readable, Writeable {
    func speak()
}

class SomeClass: ReadWriteSpeakable {
    func read() {
        print("Read")
    }
    
    func write() {
        print("Write")
    }
    
    func speak() {
        print("Speak")
    }
}

// ReadSpeakable 프로토콜은 Readable 프로토콜을 상속
// ReadaWriteSpeakable 프로토콜은 Readable과 Writeable 프로토콜을 상속
// ReadWriteSpeakable 프로토콜을 채택한 SomeClass는 세 프로토콜이 요구하는 read(), write(), speak() 메서드를 모두 구현해야 한다
