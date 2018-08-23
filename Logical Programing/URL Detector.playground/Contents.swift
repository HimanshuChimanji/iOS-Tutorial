//: Playground - noun: a place where people can play

import UIKit

// You can Detect multiple thing by this method for example address , date , phone number , URL , etc.

let input = "This is a test with the URL https://github.com/HimanshuChimanji to be detected."
let detector = try! NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
let matches = detector.matches(in: input, options: [], range: NSRange(location: 0, length: input.utf16.count))

for match in matches {
    guard let range = Range(match.range, in: input) else { continue }
    let url = input[range]
    print(url)
}






