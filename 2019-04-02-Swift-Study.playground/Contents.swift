// Closure

let add: (Int, Int) -> Int
add = {(a: Int, b: Int) -> Int in return a + b}

let divide: (Int, Int) -> Int
divide = {(a: Int, b: Int) -> Int in return a / b}

let subtract: (Int, Int) -> Int
subtract = {(a: Int, b: Int) -> Int in return a - b}

let multiply: (Int, Int) -> Int
multiply = {(a: Int, b: Int) -> Int in return a * b}

func calculator(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int
//calculated = calculator(a: 1, b: 2, method: add)
calculated = add(4, 5)
calculated = divide(8, 4)
calculated = multiply(2, 3)
calculated = subtract(10, 3)

// 피보나치 수열 복습
// 자연수 하나를 받아 그 수에 해당하는 순서의 피보나치 수를 반환하는 함수 작성

func fibonacchi(inputNumber: Int) -> Int {
    
    var beforeNumber: Int = 1
    var beforeBeforeNumber: Int = 0
    var StartLimitNumber: Int = 3
    var answer: Int = 0
    
    if inputNumber == 1 {
        return 0
    } else if inputNumber == 2 {
        return 1
    }
    
    while inputNumber >= StartLimitNumber {
        
        answer = beforeBeforeNumber + beforeNumber
        
        beforeBeforeNumber = beforeNumber
        
        beforeNumber = answer
        
        StartLimitNumber += 1
        
    }
    return answer
    
}

fibonacchi(inputNumber: 1)
fibonacchi(inputNumber: 2)
fibonacchi(inputNumber: 3)
fibonacchi(inputNumber: 4)
