import UIKit

// 성별을 나타내는 열거형 Gender
enum Gender {
    case male
    case female
    case unknown
}

// 친구들의 정보를 담을 수 있는 구조체 Friend
struct Friend {
    let name: String
    let gender: Gender
    let location: String
    var age: UInt
}

// 친구들의 정보를 담아둘 배열 friends
var friends: [Friend] = [Friend]()

friends.append(Friend(name: "Jun", gender: .male, location: "대전", age: 29))
friends.append(Friend(name: "Ron", gender: .male, location: "스티니버니지", age: 40))
friends.append(Friend(name: "Hermione", gender: .unknown, location: "파리", age: 41))
friends.append(Friend(name: "Su-A", gender: .female, location: "포항", age: 29))
friends.append(Friend(name: "Daniel", gender: .male, location: "풀럼", age: 30))
friends.append(Friend(name: "Gary Oldman", gender: .male, location: "뉴크로스", age: 62))
friends.append(Friend(name: "Alan Rickman", gender: .male, location: "해머스미스", age: 68))

// 조건에 맞는 친구 결과 출력

// 풀럼 외의 지역에 거주하며 25세 이상인 친구
var result: [Friend] = friends.map { Friend(name: $0.name, gender: $0.gender, location: $0.location, age: $0.age + 1) }

result = result.filter { $0.location != "풀럼" && $0.age >= 25 }

let string: String = result.reduce("풀럼 외의 지역에 거주하며 25세 이상인 친구") { $0 + "\n" + "\($1.name) \($1.gender) \($1.age)세" }

print(string)
