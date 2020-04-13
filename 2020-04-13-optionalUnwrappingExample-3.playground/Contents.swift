import UIKit

var myName: String? = "Jun"
var yourName: String? = nil

// friend에 바인딩이 되지 않으므로 실행되지 않는다.
if let name = myName, let friend = yourName {
    print("We are friend!")
}

yourName = "JiYeon"

if let name = myName, let friend = yourName {
    print("We are friend! \(name) & \(friend)")
}
