//: Playground - noun: a place where people can play

import UIKit



let sentence = "My Name is Himanshu Chimanji"
print("Reverse String Without the help of for loop\n")

print("Orginal Sentence: \t\t\t\t\(sentence)\n")

print("1st Type of Reversed String:\t\t\(String(sentence.reversed()))\n")






var allWords = sentence.components(separatedBy: " ")
let reverseAllWordsArray = Array(allWords.reversed())
let NewSentence = reverseAllWordsArray.joined(separator: " ")
print("2nd type of Reversed String:\t\t\(NewSentence)\n\n\n\n\n\n")











print("Reverse String With the help of for loop\n")
print("Orginal Sentence: \t\t\t\t\(sentence)\n")

var str = ""
for s in allWords
{
    //    print(s)
    str = "\(s) " + str
}
print("3rd type of Reversed String:\t\t\(str)")

str = ""
allWords = sentence.components(separatedBy: " ")

for s in sentence
{
    //    print(s)
    str = "\(s)" + str
}
print("\n4th type of Reversed String:\t\t\(str)")

