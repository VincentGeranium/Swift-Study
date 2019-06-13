import Foundation

//"http://api.open-notify.org/iss-now.json"

func practice() {
    
    let apiURL = URL(string: "http://api.open-notify.org/iss-now.json")!
    
    let dataTask = URLSession.shared.dataTask(with: apiURL) { (data, response, error) in
        guard let data = data,
            let jsonObject = try? JSONSerialization.jsonObject(with: data) as? [String : Any]
            else { return print("No data") }
        
        guard let coordinate = jsonObject["iss_position"] as? [String: String],
            let latitude = coordinate["latitude"],
            let longitude = coordinate["longitude"]
            else { return }
        
        print("\n---------- [ 국제 정거장 위치 ] ----------\n")
        print(latitude, longitude)
    }
    dataTask.resume()
}

practice()
