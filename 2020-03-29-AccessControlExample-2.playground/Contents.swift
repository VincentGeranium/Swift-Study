import UIKit

private class PrivateClass {
    // 공개 접근수준(Public)을 부여해도 PrivateClass의 접근수준이 비공개 접근수준(Private)이므로
    // 이 메서드의 접근수준도 비공개 접근수준(Private)으로 취급된다.
    public func someMethod() {
        // some codes
    }
}

// PrivateClass의 접근수준이 비공개 접근수준이므로
// 공개 접근수준 함수의 매개변수나 반환 값 타입으로 사용할 수 없다.
public func someFunction(a: PrivateClass) -> PrivateClass {
    return a
}
