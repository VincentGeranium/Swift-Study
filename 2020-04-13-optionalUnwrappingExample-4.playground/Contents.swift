import UIKit

var myName: String! = "Jun"
print(myName)
myName = nil

// 암시적 추출 옵셔널도 옵셔널이므로 바인딩을 사용할 수 있다.
if var name = myName {
    print("My name is \(name)")
} else {
    print("myName == nil")
}

myName.isEmpty
