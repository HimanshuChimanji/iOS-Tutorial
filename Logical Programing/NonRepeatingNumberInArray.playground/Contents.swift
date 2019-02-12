import Foundation

func LongestWord(_ sen: String) -> Substring {
    let words = sen.split(separator: " ")
    var longest = words.first!
    var longestLength = lengthOf(longest)
    for word in words.dropFirst() {
        let length = lengthOf(word)
        if length > longestLength {
            longest = word
            longestLength = length
        }
    }
    return longest
}

func lengthOf(_ str: Substring) -> Int {
    return str.reduce(0, { CharacterSet.punctuationCharacters.contains($1.unicodeScalars.first!) ? $0 : $0 + 1 } )
}

// keep this function call here
print(LongestWord("I am the Longest word"));
