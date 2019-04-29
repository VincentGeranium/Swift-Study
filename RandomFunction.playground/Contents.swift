import UIKit

// 스위프트에서 제공하는 랜덤함수 4가지

// arc4random() -> UInt32
// UInt32 => 0부터 2^32 - 1 범위
// 0 과 2^32 -1 사이의 난수 반환
var a = arc4random()
var b = arc4random()

// arc4random_uniform(UInt32) -> UInt32
// 파라미터로 UInt32를 받는다 (음수는 당연히 못받음)
// 리턴값으로 UInt32를 리턴
// arc4random_uniform(UInt32)는 파라미터로 넣은 0 부터 UInt32 -1 사이의 난수를 리턴

var random = arc4random_uniform(500) // 0 ~ 499 사이의 난수

// 500까지의 난수를 뽑히게 하고 싶다면 ??
var randomNumber = arc4random_uniform(501)

// drand48() -> Double
// drand48()의 리턴타입은 Double 타입
// 0 부터 1.0 사이의 난수를 리턴
var randomUseBydrand = drand48()
var randomUseBydrand2 = drand48()
