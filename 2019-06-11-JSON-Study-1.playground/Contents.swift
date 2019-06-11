import Foundation

// Creating JSON Data

// JSON 쓰기
func writeJSONObjectToOutputStream () {
    let jsonObject = ["hello" : "world", "foo" : "bar", "iOS" : "Swift"]
    
    guard JSONSerialization.isValidJSONObject(jsonObject) else { return } // JSON 객체로 변환이 가능한지 체크
    
    let jsonFilePath = "myjsonFile.json" // guard 문이 true 이면 myjsonFile이라는 이름으로
    let outputJSON = OutputStream(toFileAtPath: jsonFilePath, append: false)! // 위의 jsonObject를 myjsonFile.json 파일에 저장
    outputJSON.open()
    
    let writtenBytes = JSONSerialization.writeJSONObject(
        jsonObject,
        to: outputJSON,
        options: [.prettyPrinted], // 옵션에는 2가지 있음 -> .prettyPrinted, .sortedKeys // 빈칸으로 놔둬도 된다
        error: nil
    )
    print(writtenBytes)
    outputJSON.close()
    
    do {
        let jsonString = try String(contentsOfFile: jsonFilePath)
        print(jsonString)
    } catch {
        print(error.localizedDescription)
    }
}

print("--------------------[writeJSONObjectToOutputStream]-------------------------")
writeJSONObjectToOutputStream()



// Data with JSON Object
private func dataWithJSONObject() {
    let jsonObject: [String : Any] = [
        "someNumber" : 1,
        "someString" : "Hello",
        "someArray" : [1,2,3],
        "someDic" : [
            "someBool" : true
        ]
    ]
    
    guard JSONSerialization.isValidJSONObject(jsonObject) else { return }
    
    do {
        let encoded = try JSONSerialization.data(withJSONObject: jsonObject) // .data(withJSONObject: ) -> JSON 에서 가져온 "내용"을 "데이터화"
        let decoded = try JSONSerialization.jsonObject(with: encoded) // .jsonObject(with: ) -> json 데이터를 파라미터로 받아 swift에서 가공/처리 할 수 있는 Foundation 객체로 만들어주는 역활
        if let jsonDict = decoded as? [String : Any] {
            print(jsonDict)
        }
    } catch {
        print(error.localizedDescription)
    }
}

//print("--------------------[dataWithJSONObject]-------------------------")
//dataWithJSONObject()

// Creating a JSON Object

// JSON Object with Data

// JSON 방식의 문자열을 알고있을때 JSON 객체 생성
private func jsonObjectWithData() {
    let jsonString = """
    {
        "someNumber" : 1,
        "someString" : "Hello",
        "someArray" : [1,2,3,4],
        "someDict" : {
            "someBool" : true
        }
    }
    """
    
    let jsonData = jsonString.data(using: .utf8)!
    
    do {
        let foundationObject = try JSONSerialization.jsonObject(with: jsonData)
        if let jsonDict = foundationObject as? [String : Any] {
            print(jsonDict)
        }
    } catch {
        print(error.localizedDescription)
    }
}

//print("--------------------[jsonObjectWithData]-------------------------")
//jsonObjectWithData()

// JSON Object with InputStream
// JSON 읽어오기
private func jsonObjectWithInputStream() {
    let jsonFilePath = "myJsonFile.json"
    let inputStream = InputStream(fileAtPath: jsonFilePath)!
    inputStream.open()
    defer { inputStream.close() }
    
    guard inputStream.hasBytesAvailable else { return }
    
    do {
        let jsonObject = try JSONSerialization.jsonObject(with: inputStream)
        print(jsonObject)
    } catch {
        print(error.localizedDescription)
    }
}

print("\n---------- [ jsonObjectWithInputStream ] ----------\n")
jsonObjectWithInputStream()
