import UIKit

// enum = 타입
// case는 타입 각각의 고유값

enum ColorList {
    case red
    case blue
    case lightGray
}

var myColor: ColorList = ColorList.red
print(myColor)

myColor = .blue
print(myColor)

// enum은 switch 구문에서도 많이 사용이 된다
// switch 의 value에 myColor이라는 값은 case가 한정되어 있다는 것을 컴파일러가 알고 있으므로 모든 케이스를 다 적어주면 default를 만들어 주지 않아도 된다

switch myColor {
case .red:
    print("나의 색은 빨간색 입니다")
case .blue:
    print("나의 색은 파란색 입니다")
case .lightGray:
    print("나의 색은 밝은 회색 입니다")
}

// 전부 구현을 해주지 않을 경우 default를 구현해주어야 한다
switch myColor {
case .red:
    print("오늘의 행운의 색은 빨간색 입니다")
default:
    print("나머지 색 입니다")
}

// C 언어의 enum처럼 정수값을 가질 수도 있다
// rawValue를 사용
// case 별로 각각 다른 값을 가져야한다

enum NumberList: Int {
    case one = 1
    case two = 2
    case three = 3
}

var myNumber: NumberList = .one
print(myNumber)
print(myNumber.rawValue)

// rawValue를 사용할때는 case의 rawValue를 사용해야 한다
// 그냥 가져오게 될 경우 case 고유값이 나온다

// 정수 타입 뿐만 아니라
// Hashable 프로토콜을 따르는 모든 타입이 원시값의 타입으로 지정될 수 있다

enum NameList: String {
    case first = "김땡땡"
    case second = "민땡땡"
    case third = "조땡땡"
}

var myName: NameList = .first
print(myName)
print(myName.rawValue)
print(NameList.first.rawValue)
print(NameList.second.rawValue)

// 열거형의 초기화

enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach
}

// rawValue를 통해 초기화 할 수 있다
// rawValue가 case에 해당하지 않을 수 잇으므로 rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입이다

let myFruit: Fruit? = Fruit(rawValue: 0)

// 옵셔널 해제 구문을 이용하여 값을 가져 올 수 있다
if let myApple = myFruit {
    print("나의 과일은 \(myApple) 입니다")
} else {
    print("과일이 없습니다")
}


// 이렇게 nil 값이 들어 갈 수도 있어서 초기화 시 옵셔널 타입이다
let yourFruit: Fruit? = Fruit(rawValue: 4)

if let yourApple = yourFruit {
    print("나의 과일은 \(yourApple) 입니다")
} else {
    print("없는 과입 입니다")
}

// enum에는 메서드를 추가 가능하다

enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .mar, .apr, .may:
            print("봄 입니다")
        case .jun, .jul, .aug:
            print("여릅 입니다")
        case .sep, .oct, .nov:
            print("가을 입니다")
        case .dec, .jan, .feb:
            print("겨울 입니다")
        }
    }
}

Month.mar.printMessage()
Month.sep.printMessage()
