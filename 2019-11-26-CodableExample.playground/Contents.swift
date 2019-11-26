import Foundation

// Codable Example Code

struct Coordinate: Codable {
    var latitude: Double
    var longtitude: Double
}

struct Landmark: Codable {
    var name: String
    var foundingYear: Int
    var vantagePoint: [Coordinate]
    var metadata: [String : String]
    var website: URL?
}


// CodingKey Example Code

struct Landmark: Codable {
    var name: String
    var foundingYear: Int
    var location: Coordinate
    var vantagePoints: [Coordinate]
    
    enum CodingKeys: String, CodingKey {
        case name = "title"
        case foundingYear = "founding_date"
        case location
        case vantagePoints
    }
}


