import UIKit

class Person {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var jun = Person(name: "VincentGeranium")

if jun is Person {
    print("VincentGeranium is Person")
} else {
    print("VincentGeranium is not Person")
}

if jun.name is String {
    print("name type is String")
}


class MovieOrSong {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


class Movie: MovieOrSong {
    
    var director: String
    
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}


class Song: MovieOrSong {
    

    var artist: String
    
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let storedMovieAndSong = [
    Movie(name: "영화1", director: "영화 1의 감독"),
    Song(name: "Goodbye", artist: "박효신"),
    Song(name: "너에게 못했던 내 마지막 말은", artist: "다비치"),
    Song(name: "bad guy", artist: "Billie Eilish"),
]

var movieCount = 0

var songCount = 0

for item in storedMovieAndSong {
    
    if item is Song {
        songCount += 1
    } else if item is Movie {
        movieCount += 1
    }
}

print("저장 되어 있는 음악의 수는 \(songCount)이고, 영화의 수는 \(movieCount)입니다") // 저장 되어 있는 음악의 수는 3이고, 영화의 수는 1입니다

/*
let storedMovieAndSong = [
    Movie(name: "영화1", director: "영화 1의 감독"),
    Song(name: "Goodbye", artist: "박효신"),
    Song(name: "너에게 못했던 내 마지막 말은", artist: "다비치"),
    Song(name: "bad guy", artist: "Billie Eilish"),
]
*/

for items in storedMovieAndSong {
    
    if let movie = items as? Movie {
        print("영화의 이름은 \(movie.name)이며, 영화 감독의 이름은 \(movie.director)")
    } else if let song = items as? Song {
        print("음악의 제목은 \(song.name)이며, 아티스트의 이름은 \(song.artist)")
    }
}

// 출력
// 영화의 이름은 영화1이며, 영화 감독의 이름은 영화 1의 감독
//음악의 제목은 Goodbye이며, 아티스트의 이름은 박효신
//음악의 제목은 너에게 못했던 내 마지막 말은이며, 아티스트의 이름은 다비치
//음악의 제목은 bad guy이며, 아티스트의 이름은 Billie Eilish

var things = [Any]()

things.append(0)

things.append(0.0)

things.append(42)

things.append(3.14)

things.append("hello")

things.append((3.0, 5.0))

things.append(Song(name: "2002", artist: "Anne-Marie"))

things.append({(name: String) -> String in "Hello, \(name)"})

for thing in things {
    switch thing {
    case 0 as Int:
        print("Int 타입 0")
    case 0.0 as Double:
        print("Double 타입 0.0")
    case "hello" as String:
        print("String 타입 hello")
    case let someInt as Int:
        print("0이 아닌 Int \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("양의 Double타입 \(someDouble)")
    case is Double:
        print("다른 Double값은 출력하지 않음")
    case let someString as String:
        print("String값은 \"\(someString)")
    case let (x, y) as (Double, Double):
        print("x와 y좌표는 \(x), \(y)")
    case let movie as Movie:
        print("영화 이름은 : \(movie.name), 감독 : \(movie.director)")
    case let stringConverter as (String) -> String:
        print(stringConverter("대천사"))
    default:
        print("some Another")
    }
}


