let precomposed: Character = "\u{D55C}" //한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}" //ㅎ,ㅏ,ㄴ

print(precomposed)
print(decomposed)

let sayHello = "Hello"


print(sayHello[sayHello.startIndex]) // H -> 0번째 인덱스, 첫번째 글자
print(sayHello[sayHello.index(before: sayHello.endIndex)]) // o -> 4번째 인덱스, 마지막 글자

print(sayHello[sayHello.index(after: sayHello.startIndex)])


print(sayHello.startIndex) // Index(_rawBits: 0)
print(sayHello.endIndex) // Index(_rawBits: 327680)

print(sayHello.unicodeScalars)

let greetingToWorld = "Hello World"

print(greetingToWorld[greetingToWorld.startIndex])

print(greetingToWorld[greetingToWorld.index(greetingToWorld.startIndex, offsetBy: 0)]) // H
print(greetingToWorld[greetingToWorld.index(greetingToWorld.startIndex, offsetBy: 6)]) // W

print(greetingToWorld[greetingToWorld.index(greetingToWorld.endIndex, offsetBy: -1)]) // d
print(greetingToWorld[greetingToWorld.index(greetingToWorld.endIndex, offsetBy: -3)]) // r

for i in greetingToWorld {
    print(i)
}

for indices in greetingToWorld.indices {
    print(indices)
}

for (index, value) in greetingToWorld.enumerated() {
    print("index: \(index), value: \(value)")
}


var str = "Hello"

str.insert("A", at: str.startIndex) // "AHello"
str.insert(contentsOf: " World", at: str.endIndex) // "AHello World"


var removeStr = "AHello World"
removeStr.remove(at: removeStr.startIndex) // "A"
print(removeStr) // "Hello World"


//var helloWorld = "AHello World"
let rangeOfWorld = removeStr.index(removeStr.endIndex, offsetBy: -6)..<removeStr.endIndex
print(removeStr)
removeStr.removeSubrange(rangeOfWorld)

var hangle = "한글"

if hangle[hangle.startIndex] == "한" {
    print("첫 번째 글자가 한 입니다.")
}

if hangle.hasPrefix("한") {
    print("첫 번째 글자가 한 입니다.")
}

if hangle.hasSuffix("한글") {
    print("뒤쪽 글자가 글 입니다.")
}


let stringHello = "Hello"
let stringHelloWorld = "Hello World"
