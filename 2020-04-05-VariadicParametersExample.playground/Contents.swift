import UIKit

func sayHelloToFriend(me: String, friends names: String...) -> String {
    var result: String = ""
    
    for friend in names {
        result += "Hello \(friend)!" + " "
    }
    
    result += "I'm " + me + "!"
    return result
}

print(sayHelloToFriend(me: "Jun", friends: "Su-A", "JiYeon", "Vincent"))

print(sayHelloToFriend(me: "Jun"))
