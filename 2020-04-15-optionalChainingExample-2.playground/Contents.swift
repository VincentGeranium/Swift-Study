import UIKit


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

// 주소
struct Address {
    var province: String // 광역시/도
    var city: String // 시/군/구
    var street: String // 도로명
    var building: Building? // 건물
    var detailAddress: String? // 건물 외 상세 주소
    
    init(province: String, city: String, street: String) {
        self.province = province
        self.city = city
        self.street = street
    }
    
    func fullAddress() -> String? {
        var restAddress: String? = nil
        
        if let buildingInfo: Building = self.building {
            restAddress = buildingInfo.name
        } else if let detail = self.detailAddress {
            restAddress = detail
        }
        
        if let rest: String = restAddress {
            var fullAddress: String = self.province
            
            fullAddress += " " + self.city
            fullAddress += " " + self.street
            fullAddress += " " + rest
            
            return fullAddress
        } else {
            return nil
        }
    }
    
    func printAddress() {
        if let address: String = self.fullAddress() {
            print(address)
        }
    }
}

let jun: Person = Person(name: "Jun")

jun.address = Address(province: "충청남도", city: "대전 광역시", street: "평촌로")
jun.address?.building = Building(name: "큰 마당 한옥집")
jun.address?.building?.room = Room(number: 0)
jun.address?.building?.room?.number = 707

jun.address?.fullAddress()?.isEmpty // false
//jun.address?.printAddress() // 충청남도 대전 광역시 평촌로 큰 마당 한옥집

// 옵셔널 체이닝을 통한 서브스크립트 호출
let optionalArray: [Int]? = [1, 2, 3]
optionalArray?[1]
print(optionalArray?[1])

var optionalDictionary: [String : [Int]]? = [String : [Int]]()
optionalDictionary?["numberArray"] = optionalArray
optionalDictionary?["numberArray"]?[2]
print(optionalDictionary?["numberArray"]?[2])
