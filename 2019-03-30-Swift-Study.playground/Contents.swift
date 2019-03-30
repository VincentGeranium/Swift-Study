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

// 1

func plusNumber(num1: Int, num2: Int) -> Int {
    
    var strNumber = String(num1) + String(num2)
    
    var answer = Int(strNumber)
    
    return answer!
}

plusNumber(num1: 12, num2: 34)
plusNumber(num1: 34, num2: 7649)



// 2

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




// 3

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
