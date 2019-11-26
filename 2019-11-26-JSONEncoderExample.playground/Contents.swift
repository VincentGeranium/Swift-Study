import UIKit
import Foundation

// Codable Protocol을 준수하는 GroceryProduct Struct의 Instance를 JSON Data로 Encoding하는 방법

struct GroceryProduct: Codable {
    var name: String
    var point: Int
    var description: String?
}

let pear = GroceryProduct(name: "Pear", point: 250, description: "A ripe pear.")

let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted

do {
    let data = try encoder.encode(pear)
    print(String(data: data, encoding: .utf8)!)
} catch {
    print(error)
}


// JSON Data를 Codable Protocol을 준수하는 GroceryProduct Struct의 Instance로 Decoding 하는 방법

let json = """
{
    "name" : "Durian",
    "point": 600,
    "desctiption" : "A fruit with a distinctive scent"
}
""".data(using: .utf8)!

let decoder = JSONDecoder()

do {
    let product = try decoder.decode(GroceryProduct.self, from: json)
    print(product.name)
} catch {
    print(error)
}
