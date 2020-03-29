import UIKit

internal class InternalClass {} // 내부 접근수준 클래스
private struct PrivateStruct {} // 비공개 접근수준 구조체

// 요소로 사용되는 InternalClass와 PrivateStruct의 접근수준이
// publicTuple보다 낮기 때문에 사용할 수 없다.
public var publicTuple: (first: InternalClass, second: PrivateStruct) = (InternalClass(), PrivateStruct())

// 요소로 사용되는 InternalClass와 PrivateStruct의 접근수준이
// privateTuple과 같거나 높기 때문에 사용할 수 있다.
private var privateTuple: (first: InternalClass, second: PrivateStruct) = (InternalClass(), PrivateStruct())
