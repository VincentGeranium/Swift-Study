/*
 - 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
 - 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
 - 정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
 - 4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수
 - 점수(문자 또는 숫자)를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
 - 점수(문자 또는 숫자)를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
 */

import UIKit
//1 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
func introduceFunction(getName: String, getAge: Int) {
    print("My name is \(getName) and I'm \(getAge) old")
}

let introduce = introduceFunction(getName: "Jun", getAge: 35)

//2 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
func confirmTheMultiple (getNumber: Int) -> Bool {
    if getNumber % 2 == 0 {
        return true
    } else {
        return false
    }
}

let isThisMultiple: Int = 4
let isThisMultiple2: Int = 5
confirmTheMultiple(getNumber: isThisMultiple)
confirmTheMultiple(getNumber: isThisMultiple2)

//3 정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
func returnTheMultiple(getNumber: Int, fixNumber: Int = 10) -> Int {
    var answer = getNumber * fixNumber
    return answer
}

let returnTheMultipleNumber1 = 3
let returnTheMultipleNumber2 = 7

returnTheMultiple(getNumber: returnTheMultipleNumber1)
returnTheMultiple(getNumber: returnTheMultipleNumber2)
returnTheMultiple(getNumber: 3, fixNumber: 2)

//4 4과목의 시험 점수를 입력받아 평균 점수를 반환하는 함수
func returnAverage(first: Double, second: Double, third: Double, forth: Double) -> Double {
    let average = (first + second + third + forth) / 4
    
    return average
}

let testScoer1 = 70.4
let testScore2 = 78.2
let testScore3 = 68.2
let testScore4 = 71.1

let answer = returnAverage(first: testScoer1, second: testScore2, third: testScore3, forth: testScore4)

//5 점수(문자 또는 숫자)를 입력받아 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
func returnScore(getScore: Int) -> String {
    if getScore >= 90 {
        return "A"
    } else if getScore >= 80 && getScore < 90 {
        return "B"
    } else if getScore >= 70 && getScore < 80 {
        return "C"
    } else {
        return "F"
    }
}

returnScore(getScore: 91)
returnScore(getScore: 89)
returnScore(getScore: 79)
returnScore(getScore: 69)

// 6 점수(문자 또는 숫자)를 여러 개 입력받아 평균 점수에 대한 학점을 반환하는 함수 만들기 (90점 이상 A, 80점 이상 B, 70점 이상 C, 그 이하 F)
func returnAverageScore (testScore1: Double, testScore2: Double, testScore3: Double) -> String {
    let average = (testScore1 + testScore2 + testScore3) / 3
    
    if average >= 90 {
        return "A"
    } else if average >= 80 && average < 90 {
        return "B"
    } else if average >= 70 && average < 80 {
        return "C"
    } else {
        return "F"
    }
}

returnAverageScore(testScore1: 80, testScore2: 70, testScore3: 30)
returnAverageScore(testScore1: 80, testScore2: 80, testScore3: 70)
returnAverageScore(testScore1: 90, testScore2: 90, testScore3: 90)
returnAverageScore(testScore1: 84, testScore2: 84, testScore3: 84)
returnAverageScore(testScore1: 72, testScore2: 72, testScore3: 72)
