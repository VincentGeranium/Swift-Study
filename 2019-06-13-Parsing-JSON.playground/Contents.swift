import Foundation

let astronauts = "http://api.open-notify.org/astros.json" // 우주비행사 정보
let apiURL = URL(string: astronauts)!

let dataTask = URLSession.shared.dataTask(with: apiURL) { (data, response, error) in
    guard error == nil else { return print(error!) }
    guard let response = response as? HTTPURLResponse,
        200..<400 ~= response.statusCode
        else { return print("Status Code is not vaild") }
    guard let data = data,
        let jsonObject = try? JSONSerialization.jsonObject(with: data) as? [String : Any]
        else { return print("no data") }
    print("jsonObject :", jsonObject)
    
    guard (jsonObject["message"] as? String) == "success",
        let people = jsonObject["people"] as? [[String : String]],
        let peopleCount = jsonObject["number"] as? Int
        else { return print("Parsing Error") }
    
    print("\n---------- [ Parsing Success ] ----------\n")
    print("총 \(peopleCount) 명의 우주비행사가 탑승 중 입니다")
    
    print("\n---------- [ 우주비행사 명단 ] ----------\n")
    people
        .compactMap { $0["name"] }
        .forEach{ print($0) }
}

dataTask.resume()
