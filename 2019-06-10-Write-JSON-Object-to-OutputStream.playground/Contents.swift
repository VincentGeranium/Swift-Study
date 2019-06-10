import Foundation

func writeJSONObjectToOutputStream() {
    let jsonObject = ["name" : "Jun", "age" : "29", "sex" : "male"]
    guard JSONSerialization.isValidJSONObject(jsonObject) else { return }


let jsonFilePath = "profile.json"
let outputJSON = OutputStream(toFileAtPath: jsonFilePath, append: false)!
outputJSON.open()

print(outputJSON)

let writtenBytes = JSONSerialization.writeJSONObject(
    jsonObject,
    to: outputJSON,
    options: [.prettyPrinted],
    // options -> have two kind of options : [.prettyPrinted, .sortedKeys]
    // I can make options blank like -> [],
    error: nil)
    
    print(writtenBytes) // 0 = error
    outputJSON.close()
    
    do {
        let jsonString = try String(contentsOfFile: jsonFilePath)
        print(jsonString)
    } catch {
        print(error.localizedDescription)
    }
}

writeJSONObjectToOutputStream()
