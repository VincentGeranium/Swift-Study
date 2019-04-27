import UIKit

/***************************************************
 구글(google), 카카오(kakao), 네이버(naver) 로그인을 위해 Site라는 이름의 Enum 타입을 만들고자 합니다.
 각 case는 사용자의 아이디(String)와 비밀번호(String)를 위한 연관 값(associated value)을  가집니다.
 그리고 Site 타입 내부에는 signIn()이라는 이름의 메서드를 만들어 다음과 같이 문자열을 출력하는 기능을 구현해보세요.
 
 e.g.
 enum Site {}
 > Input
 let google = Site.google("google@gmail.com", "0000")
 google.signIn()
 
 > Output
 구글에 로그인하였습니다. (아이디 - google@gmail.com, 비밀번호 - 0000)
 ***************************************************/

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}


var productBarcode = Barcode.upc(3, 25, 153, 9)
//productBarcode = .qrCode("helloworld")

switch productBarcode {
case .upc(let a, let b, let c, let d):
    print("UPC: \(a), \(b), \(c), \(d)")
case let .qrCode(message):
    print("QRCode: \(message)")
}


enum CompassPoint   {
    case south
    case north
    case west
    case east
}

let point = CompassPoint.south

switch point {
case CompassPoint.east:
    print("이쪽은 east 입니다")
case CompassPoint.west:
    print("이쪽은 west 입니다")
case CompassPoint.north:
    print("이쪽은 north 입니다")
case CompassPoint.south:
    print("이쪽은 south 입니다")
default:
    print("방향을 찾지 못했습니다")
}

//enum Site {
//    case google(String, String)
//    case kakao(String, String)
//    case naver(String, String)
//}
//
//let google = Site.google("kwangjun3952", "1234")
//
//switch google {
//case .google(let id, let pw):
//    print("구글에 로그인 하였습니다. - (아이디 - \(id), 비밀번호 - \(pw)")
//case .kakao(let id, let pw):
//    print("카카오에 로그인 하였습니다. - (아이디 - \(id), 비밀번호 - \(pw)")
//case .naver(let id, let pw):
//    print("네이버에 로그인 하였습니다. - (아이디 - \(id), 비밀번호 - \(pw)")
//default:
//    print("로그인 실패")
//}

enum Site {
    case google(String, String)
    case kakao(String, String)
    case naver(String, String)

func signIn() {
    switch self {
    case Site.google(let id, let pw):
        print("구글에 로그인 하였습니다. - (아이디 - \(id), 비밀번호 - \(pw)")
    case Site.kakao(let id, let pw):
        print("카카오에 로그인 하였습니다. - (아이디 - \(id), 비밀번호 - \(pw)")
    case Site.naver(let id, let pw):
        print("네이버에 로그인 하였습니다. - (아이디 - \(id), 비밀번호 - \(pw)")
    default:
        print("로그인 실패")
        }
    }
}

let google = Site.google("ajkshdka@kjahsd.com", "123")
google.signIn()
