import UIKit

// Lazy Stored Properties
// 게으른 저장 프로퍼티

// 게으른 저장 프로퍼티는 값이 사용되기 전까지는 값이 계산되지 않는 프로퍼티
// lazy라는 키워드를 사용하여 선언

// 외부 파일에서 데이터를 가져오는 클래스
class DataImporter {
    // 외부 파일명
    var fileName = "data.txt"
}

// 데이터를 관리하는 클래스
// DataManager 클래스의 저장프로퍼티들은 초기값이 있으므로 init이 없어도 된다
class DataManager {
    // DataImporter의 인스턴스
    // lazy로 선언됨
    lazy var importer = DataImporter()
    
    var data = [String]()
}

// DataManger의 인스턴스
let manager = DataManager()
print(manager.data)

// DataManger의 저장프로퍼티 data라는 배열에 Some Data를 집어넣기
manager.data.append("Some Data")
print(manager.data)

// DataManger의 저장프로퍼티 data라는 배열에 Another Data를 집어넣기
manager.data.append("Another Data")
print(manager.data)

// 아직까지 DataImporter의 인스턴스인 importer 프로퍼니틑 생성되지 않았다.
// lazy 저장 프로퍼티이기 때문이다

// 게으른 저장 프로퍼티는 초기값이 인스턴스의 초기화가 될때까지 값을 모르는 외부요소에 의존하는 경우에 유용하다
// 또한, 초기값이 복잡하거나 계산비용이 많이 드는 설정을 필요로 할때도 유용

print(manager.importer.fileName)
// importer 프로퍼티에 처음 엑세스 할 때 만들어짐

// lazy 프로퍼티는 항상 변수로서 선언해야 한다
// 상수로 선언한 프로퍼티는 초기화를 함과 동시에 값을 가져야하기 때문에, 게으른 저장 프로퍼티로 선언할 수 없다
// 게으른 저장 프로퍼티는 "값이 필요할 때" 초기화를 하기 때문이다
// 또한, lazy로 선언했다고 해도 lazy 프로퍼티가 초기화 되지 않은 상태에서 여러 쓰레드가 동시에 이 lazy 프로퍼티에 엑세스 한다면, 이 프로퍼티가 단 한번만 초기화 된다는 것을 보장할 수 없다.
