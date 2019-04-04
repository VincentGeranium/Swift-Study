import UIKit

class Residence {
    var numberOfRooms: Int = 1
}
// Residence 라는 클래스를 정의
// numberOfRooms 라는 Int 타입의 저장 프로퍼티, 초기값을 주었으므로 init 메소드 불필요


class Person {
    var residence: Residence?
}
// Person이라는 클래스를 정의
// Residence 클래스를 상속받는 residence 변수
// Residence에 ? 를 보니 Residence는 옵셔널
// 초기값을 안주었기 때문에 Person 타입의 인스턴스가 만들어질 경우 residence의 초기값은 nil

let jun = Person()
// Person 타입의 인스턴스가 jun으로 만들어짐
// jun의 프로퍼티로 residence가 있는데 nil값을 갖고 있다
// Person 클래스에서 초기값을 안주었기 때문에

if let roomCount = jun.residence?.numberOfRooms {
    print("jun의 레지던스 방 개수는 \(roomCount)개 입니다")
} else {
    print("jun은 갖고있는 레지던스가 없습니다")
}



// if let 구문을 사용하여 Optional Binding을 함
// 여기에서 jun.residence?.numberOfRooms는 옵셔널 체인이다
// 프로퍼티를 통해 계속 체인처럼 이어져 있다
// jun의 residence가 nil이 아니라면, 다음으로 넘어가 numberOfRooms를 또 확인한다
// 여기서 jun의 residence가 nil이기 때문에 else 문을 수행

let kwangJun = Person()
kwangJun.residence = Residence()

if let roomCounts = kwangJun.residence?.numberOfRooms {
    print("kwangjun의 레지던스 방 개수는 \(roomCounts)개 입니다")
} else {
    print("kwangjun은 갖고있는 레지던스가 없습니다")
}
 //else 구문이 실행되지 않고 if let으로 옵셔널 바인딩이 되어 print 출력값으로 kwangjun의 레지던스 방 개수는 1개 입니다 가 나온다
// 그 이유는 let kwangJun = Person() 으로 Person 인스턴스를 생성
// 그 후 kwangJun의 프로퍼티인 residence에 Residence() 인스턴스를 할당
// residence 는 Residence 클래스를 상속 받고 있으므로 let kwangJun.residence = Residence() 부모클래스의 멤버인 numberOfRooms 값인 1을 갖게 된다
// 그래서 nil이 아니므로 출력값으로 kwangjun의 레지던스 방 개수는 1개 입니다 가 나온다
