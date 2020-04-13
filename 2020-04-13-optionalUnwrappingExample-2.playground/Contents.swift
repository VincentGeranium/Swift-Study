import UIKit

var myName: String? = "Jun"

// 옵셔널 바인딩을 통한 임시 상수 할당.
if let name = myName {
    print("My name is \(name)")
} else {
    print("myName == nil")
}

// 옵셔널 바인딩을 통한 임시 변수 할당.
if var name = myName {
    name = "Su-A" // 변수이므로 내부에서 변경이 가능하다.
    print("My name is \(name)")
} else {
    print("myName == nil")
}
