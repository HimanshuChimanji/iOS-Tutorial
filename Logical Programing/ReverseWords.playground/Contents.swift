//: Playground - noun: a place where people can play

import UIKit



let sentence = "My Name is Himanshu Chimanji"
print("Orginal Sentence: \t\t\t\t\(sentence)\n")

print("1st Type of Reversed String:\t\(String(sentence.reversed()))\n")

let allWords = sentence.components(separatedBy: " ")
let reverseAllWordsArray = Array(allWords.reversed())
let NewSentence = reverseAllWordsArray.joined(separator: " ")
print("2nd type of reversed String:\t\(NewSentence)")




