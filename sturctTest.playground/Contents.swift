import UIKit

struct User {
    var friends: [String] = []
}

var userVariable = User()
userVariable.friends.append("A")
print(userVariable.friends[0])

let userConstant = User()
userConstant.friends.append("B")
