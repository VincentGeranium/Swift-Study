import UIKit

struct BasicInfomation {
    let name: String
    var age: Int
}

var junInfo: BasicInfomation = BasicInfomation(name: "Jun", age: 30)
junInfo.age = 100

// junInfo의 값을 복사하여 할당한다
var friendInfo: BasicInfomation = junInfo

print("Jun's age : \(junInfo.age)") // 100
print("Friend age: \(friendInfo.age)") // 100

friendInfo.age = 999

print("Jun's age : \(junInfo.age)") // 100 - jun의 값은 변동이 없다
print("Friend age: \(friendInfo.age)") // 999 - friendInfo는 junInfo의 값을 복사해왔기 때문에 별개의 값을 갖는다

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

var jun: Person = Person()
var friend: Person = jun // jun의 참조를 할당

print("Jun height: \(jun.height)") // 0.0
print("Friend height \(friend.height)") // 0.0

friend.height = 185.3
print("Jun height: \(jun.height)") // 185.3 - friend는 jun을 참조하기 때문에 값이 변동된다.

print("Friend height \(friend.height)") // 185.3  - 이를 통해 jun이 참조하는 곳과 friend가 참조하는 곳이 같음을 알 수 있다.

func changeBasicInfo(_ info: BasicInfomation) {
    var copiedInfo: BasicInfomation = info
    copiedInfo.age = 1
}

func changePersonInfo(_ info: Person) {
    info.height = 155.3
}

// changeBasicInfo(_:)로 전달되는 전달인자는 값이 복사되어 전달되기 때문에 junInfo의 값만 전달되는 것이다
changeBasicInfo(junInfo)
print("Jun's age : \(junInfo.age)") // 100

// changePersonInfo(_ :)의 전달인자로 jun의 참조가 전달되었기 때문에 jun이 참조하는 값들에 변화가 생긴다
changePersonInfo(jun)
print("Jun height: \(jun.height)") // 155.3

// 식별 연산자의 사용 (Identity Operator)
var jiyeon: Person = Person()
let vincent: Person = jiyeon // jiyeon의 참조를 할당한다
let anotherFriend: Person = Person() // 새로운 인스턴스를 생성한다

print(jiyeon === vincent) // true
print(vincent === anotherFriend) // false
print(vincent !== anotherFriend) // true
