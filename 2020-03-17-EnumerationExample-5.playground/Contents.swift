import UIKit

// 연관 값을 갖는 열거형
enum MainDish {
    case pasta(taste: String)
    case pizza(dough: String, topping: String)
    case chicken(withSause: Bool)
    case rice
}

var dinner: MainDish = MainDish.pasta(taste: "크림") // 크림 파스타
dinner = .pizza(dough: "치즈 크러스트", topping: "불고기") // 불고기 치즈크러스트 피자
dinner = .chicken(withSause: true) // 양념 통닭
dinner = .rice // 밥


// 여러 열거형의 응용
enum PastaTaste {
    case cream, tomato
}

enum PizzaDough {
    case cheeseCrust, thin, original
}

enum PizzaTopping {
    case pepperoni, cheese, bacon
}

enum AnotherMainDish {
    case pasta(taste: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(withSauce: Bool)
    case rice
}

var anotherDinner: AnotherMainDish = AnotherMainDish.pasta(taste: PastaTaste.tomato)
anotherDinner = AnotherMainDish.pizza(dough: PizzaDough.cheeseCrust, topping: PizzaTopping.bacon)
