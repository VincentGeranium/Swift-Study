import UIKit

// Receiveable, Sendable 프로토콜과 두 프로토콜을 준수하는 Message와 Mail 클래스

// 무언가를 수신받을 수 있는 기능
protocol Receiveable {
    func received(data: Any, from: Sendable)
}

// 무언가를 발신할 수 있는 기능
protocol Sendable {
    var from: Sendable { get }
    var to: Receiveable? { get }
    
    func send(data: Any)
    
    static func isSendableInstance(_ instance: Any) -> Bool
}

// 수신, 발신이 가능한 Message 클래스
class Message: Sendable, Receiveable {
    // 발신은 발신 가능한 객채, 즉, Sendable 프로토콜을 준수하는 타입의 인스턴스여야 한다.
    var from: Sendable {
        return self
    }
    
    // 상대방은 수신 가능한 객체, 즉, Receiveable 프로토콜을 준수하는 타입의 인스턴스여야 한다.
    var to: Receiveable?
    
    // 메시지를 발신한다.
    func send(data: Any) {
        guard let receiver: Receiveable = self.to else {
            print("Message has no receiver")
            return
        }
        // 수신 가능한 인스턴스의 received 메서드를 호출한다.
        receiver.received(data: data, from: self.from)
    }
    
    // 메시지를 수신한다.
    func received(data: Any, from: Sendable) {
        print("Message received \(data) from \(from)")
    }
    
    // class 메서드이므로 상속이 가능하다.
    class func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance: Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
}

// 수신, 발신이 가능한 Mail 클래스
class Mail: Sendable, Receiveable {
    var from: Sendable {
        return self
    }
    
    var to: Receiveable?
    
    func send(data: Any) {
        guard let receiver: Receiveable = self.to else {
            print("Mail has no receiver")
            return
        }
        
        receiver.received(data: data, from: self.from)
    }
    
    func received(data: Any, from: Sendable) {
        print("Mail received \(data) from \(from)")
    }
    
    // static 메서드이므로 상속이 불가능하다.
    static func isSendableInstance(_ instance: Any) -> Bool {
        if let sendableInstance: Sendable = instance as? Sendable {
            return sendableInstance.to != nil
        }
        return false
    }
}

// 두 Message 인스턴스를 생성한다.
let myPhoneMessage: Message = Message()
let yourPhoneMessage: Message = Message()

// 아직 수신받을 인스턴스가 없다
myPhoneMessage.send(data: "Hello") // Message has no receiver

// Message 인스턴스는 발신과 수신이 모두 가능하므로 메시지를 주고 받을 수 있다.
myPhoneMessage.to = yourPhoneMessage
myPhoneMessage.send(data: "Hello") // Message received Hello from Message

// 두 Mail 인스턴스를 생성한다.
let myMail: Mail = Mail()
let yourMail: Mail = Mail()

myMail.send(data: "Hi") // Mail has no receiver

// Mail과 Message 모두 Sendable과 Receiveable 프로토콜을 준수하므로 서로 주고 받을 수 있다.
myMail.to = yourMail
myMail.send(data: "Hi") // Mail received Hi from Mail

myMail.to = myPhoneMessage
myMail.send(data: "Bye") // Message received Bye from Mail

// String은 Sendable 프로토콜을 준수하지 않는다.
Message.isSendableInstance("Hello") // false

// Mail과 Message는 Sendable 프로토콜을 준수한다.
Message.isSendableInstance(myPhoneMessage) // true

// yourPhoneMessage는 to 프로퍼티가 설정되지 않아서 보낼 수 없는 상태이다.
Message.isSendableInstance(yourPhoneMessage) // false
Mail.isSendableInstance(myPhoneMessage) // true
Mail.isSendableInstance(myMail) // true
