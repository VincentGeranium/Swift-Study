/*********************************************************
 1 - 두 개의 자연수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 정수로 반환하는 함수
 (1과 5 입력 시 15,  29와 30 입력 시 2930,  6과 100 입력 시 6100)
 2 - 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
 3 - 자연수를 입력받아 그 수의 약수를 모두 출력하는 함수
 4 - 2 이상의 자연수를 입력받아, 소수인지 아닌지를 판별하는 함수
 5 - 자연수 하나를 입력받아 피보나치 수열 중에서 입력받은 수에 해당하는 자리의 숫자를 반환하는 함수
 참고로 피보나치 수열은 이전 두 수의 합이 다음 수가 되는 수열
 (입력된 숫자가 4면 0, 1, 1, 2, 3, 5 ... 에서 4번째 위치인 2 출력.    )
 6 - 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
*********************************************************/




var a: Int = 12
var b: Int = 34

var ab = String(a) + String(b)

type(of:ab)

//var A: String = "1"
//var B: String = "2"
//var AB = Int(A) + Int(B)

// [1] - 두 개의 자연수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 정수로 반환하는 함수 (1과 5 입력 시 15,  29와 30 입력 시 2930,  6과 100 입력 시 6100)

func plusNumber(num1: Int, num2: Int) -> Int {
    
    var strNumber = String(num1) + String(num2)
    
    var answer = Int(strNumber)
    
    return answer!
}

plusNumber(num1: 12, num2: 34)
plusNumber(num1: 34, num2: 7649)



// [2] - 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수

func strJudge(firstStr: String, secondStr: String) -> Bool {
    if firstStr == secondStr {
        return true
    } else {
        return false
    }
}


strJudge(firstStr: "Hello", secondStr: "Hello")
strJudge(firstStr: "SuA", secondStr: "SuA")
strJudge(firstStr: "typingExercise", secondStr: "type")




// [3] - 자연수를 입력받아 그 수의 약수를 모두 출력하는 함수

func listOfDivisor(number: Int) {

    var answer: Set<Int> = []
    var max: Int = 0
    var num1: Int
    var num2: Int
    
    repeat {
        for num1 in 1...number {
            for num2 in 1...number {
                if num1 * num2 != number {
                    continue
                } else {
                    answer.insert(num1)
                    answer.insert(num2)
                }
                
            }
            
        }
        max += 1
        
    } while max <= number
    
    var sortedSet =  answer.sorted(by: <)

    print(sortedSet)
}

listOfDivisor(number: 10)



// [4] - 2 이상의 자연수를 입력받아, 소수인지 아닌지를 판별하는 함수

func primeNumber(inputNumber: Int) -> Bool {
    
    var num1: Int
    var num2: Int
    var middleResult: Set<Int> = []
    var max: Int = 0
    
    if inputNumber == 1 {
        return false
    } else {
        repeat {
            for num1 in 1...inputNumber {
                for num2 in 1...inputNumber {
                    if num1 * num2 == inputNumber {
                        middleResult.insert(num1)
                        middleResult.insert(num2)
                        
                    } else {
                        continue
                        
                    }
                    
                }
                
            }
            max += 1
            
        } while max <= inputNumber
        var comparisonSet: Set<Int> = [1,inputNumber]
        
        if middleResult == comparisonSet {
            return true
            
        } else {
            return false
            
        }
        
    }
    
}

primeNumber(inputNumber: 4)
primeNumber(inputNumber: 10)
primeNumber(inputNumber: 1)
primeNumber(inputNumber: 3)


//  5 - 자연수 하나를 입력받아 피보나치 수열 중에서 입력받은 수에 해당하는 자리의 숫자를 반환하는 함수, 참고로 피보나치 수열은 이전 두 수의 합이 다음 수가 되는 수열 (입력된 숫자가 4면 0, 1, 1, 2, 3, 5 ... 에서 4번째 위치인 2 출력.    )

    // 피보나치 수 Fn은 0번째 항 부터 시작할 경우 점화식을 다음과 같이 정의하기 때문에  f0 = 0, f1 = 1, fn = f(n-1) + f(n-2)
    // 피보나치 수열은 이전 두 수의 합이 다음 수가 되는 수열
    // 0번째 , 1번째 항은 고정
/*
func fibonacciNumber(inputNumber: Int) {
    
    var result: Int = 0

        if inputNumber == 1 {
            print("\(inputNumber)번째 항의 피보나치 수는 \(inputNumber - 1)")
        } else if inputNumber == 0 {
            print("0번째 항은 없습니다 다른 수를 넣어주세요.")
        } else {

            var firstValue: Int = 0
            var secondValue: Int = 1

            for _ in 2...inputNumber {

                result = firstValue + secondValue

                firstValue = secondValue
                secondValue = result
            }
            print(result)
//            print("\(inputNumber)번째 항의 피보나치 수는 \(result - 1)")
    }

}

fibonacciNumber(inputNumber: 5)
*/

func fibonacchi(inputNumber:Int ) -> Int {
    
    
   
    var beforebeforeNum: Int = 0
    var beforeNum: Int = 1
    var result: Int = 0
    
    if inputNumber == 0 {
        print("0번째 항은 없습니다 다른 수를 넣어주세요")
        return 0
    } else if inputNumber == 1 {
        return 0
    }
    
    for _ in 2..<inputNumber {
        
        result = beforebeforeNum + beforeNum
        
        beforebeforeNum = beforeNum
        beforeNum = result
        
    }
    return result
}

fibonacchi(inputNumber: 0)

/*
 // 유창근님 코드
 func fibonacciNumber(number: Int) -> Int{
 var num = 3
 var before2 = 0
 var before1 = 1
 var fibo = 0
 if number == 1{
 return 0
 }
 else if number == 2 {
 return 1
 }
 while number >= num {
 fibo = before2 + before1
 print(fibo)
 before2 = before1
 before1 = fibo
 num += 1
 }
 
 return fibo
 }
 
 fibonacciNumber(number: 0)
*/

func fibonacchi(inputNumber: Int) -> Int {
    var max: Int = 3
    var answer: Int = 0
    var beforebeforeNum: Int = 0
    var beforeNum: Int = 1
    
    if inputNumber == 1 { return 0 } else if  inputNumber == 2 { return 1 }
    
    while inputNumber >= max {
        
        answer = beforebeforeNum + beforeNum
        
        beforebeforeNum = beforeNum
        beforeNum = answer
        
        max += 1
    }
    return answer
}

//결과 테스트

 fibonacchi(inputNumber: 1)
 fibonacchi(inputNumber: 2)
 fibonacchi(inputNumber: 3)
 fibonacchi(inputNumber: 4)



// [6] - 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수

var tempSet: Set<Int> = []
var tempSet2: Set<Int> = []
var answerSet: Set<Int> = []


func sameMulifly() {
    let inputNumber = 100
    
    for i in 1...inputNumber {
        if i % 3 == 0 {
            tempSet.insert(i)
        }
    }
    
    for i in 1...inputNumber {
        if i % 5 == 0 {
            tempSet2.insert(i)
        }
    }
    answerSet = tempSet.intersection(tempSet2)
    print(answerSet.sorted())
}


sameMulifly()

