import UIKit

//enum School {
//    case primary // 유치원
//    case elementary // 초등
//    case middle // 중등
//    case high // 고등
//    case college // 대학
//    case university // 대학교
//    case graduate // 대학원
//}

enum School {
    case primary, elementary, middle, high, college, university, graduate
}

var highestEducationLevel: School = School.university

// 위 코드와 같은 표현
var anotherHighestEducationLevel: School = .university

// 같은 타입인 School 내부 항목으로만 highestEducationLevel의 값을 변경해줄 수 있다.
highestEducationLevel = .graduate


