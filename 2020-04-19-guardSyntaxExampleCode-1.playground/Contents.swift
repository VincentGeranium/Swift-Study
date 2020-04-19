import UIKit

// if 구문을 사용한 코드
for i in 0...3 {
    if i == 2 {
//        print(i)
    } else {
        continue
    }
}

// guard 구문을 사용한 코드
for i in 0...3 {
    guard i == 2 else {
        continue
    }
//    print(i)
}

// guard 구문의 옵셔널 바인딩 활용
func greet(_ person: [String: String]) {
    guard let name: String = person["name"] else {
        return
    }
    
    print("Hello \(name)!")
    
    guard let location: String = person["location"] else {
        print("I hope the weather is nice near you")
        return
    }
    
    print("I hope the weather is nice in \(location)")
}

var personInfo: [String: String] = [String: String]()
print("------------[have name but not location]---------------")
personInfo["name"] = "Su-A"
greet(personInfo)

print("                                                        ")

print("------------[have name and location]-------------------")
personInfo["location"] = "Deajeon"
greet(personInfo)



// 메서드 내부에서 guard 구문의 옵셔널 바인딩 활용
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
        
        guard let rest: String = restAddress else {
            return nil
        }
        
        var fullAddress: String = self.province
        fullAddress += " " + self.city
        fullAddress += " " + self.street
        fullAddress += " " + rest
        
        return fullAddress
    }
    
    func printAddress() {
        if let address: String = self.fullAddress() {
            print(address)
        }
    }
}

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

// guard 구문에 구체적인 조건을 추가
func enterClub(name: String?, age: Int?) {
    guard let name: String = name, let age: Int = age, age > 19, name.isEmpty == false else {
        print("You are too young to enter the club")
        return
    }
    print("Welcome \(name)!")
}

// guard 구문이 사용될 수 없는 경우
let first: Int = 3
let second: Int = 5
/*
guard first > second else {
    // Error : 여기에 들어올 제어문 전환 명령은 딱히 없다.
}
*/
