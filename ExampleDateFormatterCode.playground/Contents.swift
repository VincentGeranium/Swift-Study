import UIKit

let dateFormatter = DateFormatter()
dateFormatter.dateStyle = .full
dateFormatter.timeStyle = .none

let date = Date(timeIntervalSinceReferenceDate: 118800)

// US English Locale(en_US)
dateFormatter.locale = Locale(identifier: "en_US")
print(dateFormatter.string(from: date))

// KOR Korean Locale (ko_KR)
dateFormatter.locale = Locale(identifier: "ko_KR")
print(dateFormatter.string(from: date))

let dateString = "1970-01-01 08:03:30 +0000"
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss ZZZ"

print(dateFormatter.date(from: dateString)!)
