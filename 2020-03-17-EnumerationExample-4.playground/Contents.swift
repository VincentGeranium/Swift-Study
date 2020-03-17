import UIKit

enum School: String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college
    case university
    case graduate = "대학원"
}

let highestEducationLevel: School = School.university
print("저의 최종학력은 \(highestEducationLevel.rawValue) 졸업입니다.")

print(School.college.rawValue)

enum Numbers: Int {
    case zero
    case one
    case two
    case three
    case ten = 10
}

print("\(Numbers.zero.rawValue), \(Numbers.one.rawValue), \(Numbers.two.rawValue), \(Numbers.three.rawValue), \(Numbers.ten.rawValue)")

// 원시 값을 통한 열거형 초기화
let primary = School(rawValue: "유치원") // primary
let graduate = School(rawValue: "석박사")

let one = Numbers(rawValue: 1)
let four = Numbers(rawValue: 4)
