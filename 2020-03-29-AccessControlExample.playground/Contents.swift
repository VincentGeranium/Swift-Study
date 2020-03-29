import UIKit

open class OpenClass {
    open var openProperty: Int = 0
    public var publicProperty: Int = 0
    internal var internalProperty: Int = 0
    fileprivate var fileprivateProperty: Int = 0
    private var privateProperty: Int = 0
    
    open func openMethod() {}
    public func publicMethod() {}
    internal func internalMethod() {}
    fileprivate func fileprivateMethod() {}
    private func privateMethod() {}
}

public class PublicClass {}
public struct PublicStruct {}
public enum PublicEnum {}
public var publicVariable: Int = 0
public let publicConstant: Int = 0
public func publicFunction() {}

internal class InternalClass {} // internal 키워드는 생략 가능
internal struct InternalStruct {}
internal enum InternalEnum {}
var internalVariable = 0
let internalConstant = 0
func internalFunction() {}

fileprivate class FilePrivateClass {}
fileprivate struct FilePrivateStruct {}
fileprivate enum FilePrivateEnum {}
fileprivate var filePrivateVariable = 0
fileprivate let filePrivateConstant = 0
fileprivate func filePrivateFunction() {}

private class PrivateClass {}
private struct PrivateStruct {}
private enum PrivateEnum {}
private var privateVariable = 0
private let privateConstant = 0
private func privateFunction() {}
