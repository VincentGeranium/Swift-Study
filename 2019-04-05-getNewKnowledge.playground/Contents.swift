//https://github.com/VincentGeranium/Swift-Study/blob/master/OptionalChainingExample.playground/Contents.swift

class Residence {
    var numberOfRooms: Int = 1
}

class Person {
    var residence: Residence?
}

let jun = Person()

if let roomCount = jun.residence?.numberOfRooms {
    print("jun의 레지던스 방 개수는 \(roomCount)개 입니다")
} else {
    print("jun은 갖고있는 레지던스가 없습니다")
}

// 이 코드 중 line 8을 보면 var residence: Residence? 라는 것이 보이는데 나는 옵셔널 타입의 클래스를 var residence가 "상속" 받는다고 생각을 했다
// 그런데 생각해보니 var someThing: Int = 0 처럼 Int를 받는 것 처럼 보였다 그래서 알아보니, "상속"을 받는 것이 아니였다

let sua = Person()
sua.residence = Residence()

// var residence: Residence? 는 상속이 아니고 위의 코드와 같은 의미라고 생각하면 된다
