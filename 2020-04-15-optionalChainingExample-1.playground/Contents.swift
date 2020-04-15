import UIKit

// 사람의 주소 정보 표현 설계

// 호실
class Room {
    // 호실 번호
    var number: Int
    
    init(number: Int) {
        self.number = number
    }
}

// 건물
class Building {
    // 건물 이름
    var name: String
    
    // 호실 정보
    var room: Room?
    
    init(name: String) {
        self.name = name
    }
}

// 주소
struct Address {
    // 광역시/도
    var province: String
    
    // 시/군/구
    var city: String
    
    // 도로명
    var street: String
    
    // 건물
    var building: Building?
    
    // 건물 외 상세 주소
    var detailAddress: String?
}

// 사람
class Person {
    // 이름
    var name: String
    
    // 주소
    var address: Address?
    
    init(name: String) {
        self.name = name
    }
}


// jun 인스턴스 생성
//let jun: Person = Person(name: "Jun")

// 옵셔널 체이닝 문법

//let junRoomViaOptionalChaining: Int? = jun.address?.building?.room?.number
//print("junRoomViaOptionalChaining : \(junRoomViaOptionalChaining)")

//let junRoomViaOptionalUnwrapping: Int = jun.address!.building!.room!.number


// 옵셔널 바인딩의 사용
//let jun: Person = Person(name: "Jun")

//var roomNumber: Int? = nil

//if let junAddress: Address = jun.address {
//    if let junBuilding: Building = junAddress.building {
//        if let junRoom: Room = junBuilding.room {
//            roomNumber = junRoom.number
//        }
//    }
//}
//
//if let number: Int = roomNumber {
//    print(number)
//} else {
//    print("Can not find room number")
//}

// 옵셔널 체이닝의 사용
let jun: Person = Person(name: "Jun")

if let roomNumber: Int = jun.address?.building?.room?.number {
    print(roomNumber)
} else {
//    print("Can not find room number")
}

// 옵셔널 체이닝을 통한 값 할당 시도
jun.address?.building?.room?.number = 707
//print(jun.address?.building?.room?.number)

// 옵셔널 체이닝을 통한 값 할당
jun.address = Address(province: "충청남도", city: "대전 광역시", street: "평촌로", building: nil, detailAddress: nil)
jun.address?.building = Building(name: "큰 마당 한옥집")
jun.address?.building?.room = Room(number: 0)
jun.address?.building?.room?.number = 707

print(jun.address?.building?.room?.number)
