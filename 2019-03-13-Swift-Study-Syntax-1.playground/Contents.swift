// 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)

func yourGpa(number: Double) -> String {
    if number == 4.5 {
        return "A+"
    } else if number == 4.0 {
        return "A"
    } else if number == 3.5 {
        return "B+"
    } else if number == 3.0 {
        return "B"
    } else if number == 2.5 {
        return "C+"
    } else if number == 2.0 {
        return "C"
    } else {
        return "F"
    }
}

yourGpa(number: 4.5)
yourGpa(number: 4.0)



// 특정 달을 숫자로 입력 받아서 문자열로 반환하는 함수 (1 = "Jan" , 2 = "Feb")

func specificMonth (month: Int) -> String {
    if month == 1 {
        return "Jan"
    } else if month == 2 {
        return "Feb"
    } else if month == 3 {
        return "Mar"
    } else if month == 4 {
        return "Apr"
    } else if month == 5 {
        return "May"
    } else if month == 6 {
        return "June"
    } else if month == 7 {
        return "July"
    } else if month == 8 {
        return "Aug"
    } else if month == 9 {
        return "Sep"
    } else if month == 10 {
        return "Oct"
    } else if month == 11 {
        return "Nov"
    } else if month == 12 {
        return "Dec"
    } else {
        return "Plz consider number and try again"
    }
}


specificMonth(month: 1)
specificMonth(month: 12)
specificMonth(month: 13)



// 세 수를 입력받아 세 수의 곱이 양수이면 true, 그렇지 않으면 false 를 반환하는 함수 (switch where clause 를 이용해 풀어볼 수 있으면 해보기)

func calculator (x: Int, y: Int, z: Int) -> Bool {
    let multi: Int = x * y * z
    let answer:Int = multi
    
    switch answer {
    case let multi where multi > 0:
        return true
    default:
        return false
        
    }
}

calculator(x: 1, y: 2, z: 1)
calculator(x: 1, y: -2, z: 1)



// 정수를 입력받아 윤년인지 아닌지 판단하는 함수 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)

func leapYearCalculator (year: Int) -> Bool {
    if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
        return true
    } else {
        return false
    }
}

leapYearCalculator(year: 2016)
leapYearCalculator(year: 2100)
