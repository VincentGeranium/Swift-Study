// 타입을 확인 할 때 사용하는 Generic Function -> type(of:)

var a: Int = 5

type(of: a)

type(of: 1)
type(of: "b")
type(of: true)
type(of: 2.0)


// Any 타입의 배열을 만들 수 있다
let anyArray: [Any] = [1, "b", true, 2.0]
type(of: anyArray)
type(of: anyArray[0])
type(of: anyArray[1])
type(of: anyArray[2])
type(of: anyArray[3])

// generic
// 제네릭은 스위프트에서 강력한 도구 중 하나, swift의 라이브러리의 대부분은 Generic으로 되어 있다

class Person {
    var name: String
    
    init(name: String){
        self.name = name
    }
}

// Person 클래스 정의 , Stored Property로 name, 초기값이 없어서 init을 만들어줌

var sua = Person(name: "Sua")

if sua is Person {
    print(true)
}

// sua 라는 변수에 Person 클래스 인스턴스를 만들어 초기값으로 "Sua"를 넣어 할당
// if 문을 사용하여 sua is Person -> sua 라는 인스턴스가 Person 클래스와 타입이 같으면 true 다르면 if 문을 빠져나온다

var jun = Person(name: "Jun")

if jun.name is String {
    print("true")
}

// jun이라는 변수에 Person 클래스의 "Jun"으로 초기화 하여 할당 , jun 이라는 Person 클래스 타입의 인스턴스가 생성
// jun은 Person 클래스의 인스턴스이므로 Person 클래스 내부에 정의된 프로퍼티인 name에 접근이 가능
// jun.name = "Jun", 즉 String Type
// jun.name is String 하면 jun.name의 타입과 String 타입을 체크하고 비교하여 같으면 true가 출력 아니면 if문을 빠져나온다

class MediaItem {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// MediaItem 이라는 클래스를 정의, 그 안에는 var name 이라는 String 타입의 저장 프로퍼티가 정의되어 있으나 초기값이 설정되어 있지 않아서 init 메소드로 초기값을 설정해주는데 self.name = name으로 class를 할당받는 인스턴스 객체에서 name 값으로 할당해주는 값으로 self.name으로 받는다

class Movie: MediaItem {
    
    var director: String
    
    init(name: String, director: String){
    
    self.director = director
    
        super.init(name: name)
    }
}
// Movie라는 새로운 클래스를 정의 , MediaItem이라는 클래스를 부모클래스로 상속 받는다
// Movie 만의 새로운 가변 저장 프로퍼티인 director을 새로 정의, 초기값이 없어서 init 메소드로 초기값을 설정해주었다
// init 메소드 안에 super.init으로 하여 super class인 MediaItem의 init 메소드를 super class 버전으로 받아와 사용했다
// super.init을 사용한 이유는 Movie는 MediaItem을 부모클래스로 사용하는데 그 부모 클래스 안에는 초기화 안된 name이라는 가변 저장 프로퍼티가 있고 그 프로퍼티를 사용하려면 init을 해주어야 하는데 슈퍼클래스 내부에 name 의 init 메소드가 있다, 그런데 Movie 클래스에서는 override 하지 않고 그대로 Super Class의 name의 init 메소드를 사용하고 싶어서 super.init(name: name) super 버전으로 받아온것이다

class Song: MediaItem {
    var artist: String
    
    init(name: String, artist: String){
    
    self.artist = artist
    
        super.init(name: name)
    }
}

// Song 라는 클래스는 MediaItem을 부모 클래스로 상속받는다
// init을 해주어야 한다, MediaItem에는 초기값이 주어지지 않은 name라는 저장 프로퍼티가 있고, Song 내부에서도 artist라는 초기값이 지정되지 않은 프로퍼티가 있기 때문에 Song 내부에서는 name과 artist 둘 다 init으로 초기화를 해 주어야 한다
// super.init(name: name)으로 name 프로퍼티의 초기화 메소드를 super class 버전으로 볼러온다

let library = [

    Movie(name: "해리포터와 마법사의 돌", director: "크리스 콜럼버스"),
    
    Song(name: "Prologue", artist: "John Williams"),
    
    Movie(name: "인터스텔라", director: "크리스토퍼 놀란"),
    
    Movie(name: "해리포터와 불의 잔", director: "마이크 뉴웰")
    
]

// library 라는 배열을 만든다 이 배열 안에는 MediaItem을 상속받는 Movie와 Song 타입의 인스턴스들을 넣었다
// library 라는 배열은 MediaItem 타입의 배열이 된다 왜나면 여러 인스턴스를 받는 배열은 가장 상위에 있는 클래스 타입을 받기 때문이다

var movieCount = 0
var songCount = 0

for item in library {
    
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print("Media library는 \(movieCount)개의 영화와 \(songCount)개의 노래가 있다!")

// 위의 코드는 가변 저장 프로퍼티인 movieCount 와 songCount를 0으로 초기값을 주고 for item in library로 배열안에 든 데이터의 갯수만큼 for문을 돌리는 코드이다
// for 문 안에 if문으로 item에 들어간 데아터가 is 로 타입을 체크하여 Movie의 타입이면 true가 되어 movieCount += 1로 하나씩 값이 오르고
// else if 로 item이 is 로 타입을 확인하여 Song 타입이면 songCount += 1로 하여금 값이 1씩 올라 밑에 프린트문이 출력되도록 하였다


// 다운캐스팅을 하는 방법
// 다운캐스팅은 실패할 가능성이 있기 때문에 두가지 형태의 연산자를 사용하여 진행한다
// as? , as!
// 조건부 형식인 as? 는 다운캐스팅 하려는 타입의 Optional 값을 반환
// 강제 형식인 as!는 강제 언래핑을 하여 값을 반환

// 다운캐스팅을 하는 이유는 좀 더 확장해서 사용 가능하기 때문?

for item in library {
    
    if let movie =  item as? Movie {
        print("Movie: \(movie.name) ,Director: \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by\(song.artist)")
    }
}

// if let 구문을 이용하여 optional binding을 하고
// as? 를 이용하여 조건부 형식의 다운캐스팅을 진행하고 있다
// libray는 MediaItem 타입 배열, 그 안에 들어있는 인스턴스는 MediaItem의 서브 클래스들인 Movie와 Song
// for 문을 이용하여 library 배열안에 들어있는 MediaItem의 서브 클래스들인 Movie와 Song이 차례로 들어가 반복되어
// if let 구문으로 optional binding하고  as? 연산자를 이용하여 다운캐스팅이 가능하면 값이 있고 불가능하면 nil이 있기 때문에 true/false로 값이 나뉘어지고 그에 따라 밑에 출력문이 출력된다

// MediaItem은 슈퍼클래스, Movie와 Song 클래스는 MediaItem의 서브클래스(자식 클래스)
// item은 MediaItem인스턴스이기 때문에, Movied 일 수도 있고, Song 일 수도 있다.
// as?는 옵셔널 값을 반환하기 때문에, if let 구문으로 값을 꺼내온 것을 볼 수 있다
// 그 값을 Movie 타입으로 다운캐스팅 할 수 있으면 movie에 넣고 , Song 타입으로 다운캐스팅 할 수 있으면 song에 넣는것이다

// Any and AnyObject type casting

var things = [Any]()
// Any 타입의 빈 배열을 생성하여 things에 할당하였다

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.104)
things.append("Hello")
things.append((3.0,5.0))
things.append(Movie(name: "해리포터와 마법사의 돌", director: "크리스 콜럼버스"))
things.append({(name:String) -> String in "Hello, \(name)"})

// as 는 패턴 매칭에 사용이 가능하다
// as : 타입 변환이 확실하게 가능한 경우(업캐스팅, 자기 자신 등)에만 사용 가능, 그 외에는 컴파일 에러
// as?: 조건부 형식의 타입 변환시도, 변환이 성공하면 Optional 값을 가지며, 실패시에는 nil을 반환한다
// as! : 강제 타입 변환 시도, 성공 시 언래핑 된 값을 가지며, 실패 시 런타임 에러 발생

for thing in things {
    
    switch thing {
    case 0 as Int:
        print("Int 타입의 0")
    case 0 as Double:
        print("Double 타입의 0")
    case let someInt as Int:
        print("0이 아닌 Int \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("양의 Double 타입 \(someDouble)")
    case is Double:
        print("다른 Double들은 출력하지 않습니다")
    case let someString as String:
        print("Sting 값은 \(someString)")
    case let (x,y) as (Double, Double):
        print("x와y 좌표는 \(x), \(y)")
    case let movie as Movie:
        print("영화 이름은 \(movie.name), 감독은 \(movie.director)")
    case let stringConvert as (String) -> String:
        print(stringConvert("미카엘"))
    default:
        print("ect")
    }
}
