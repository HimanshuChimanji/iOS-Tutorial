//: Playground - noun: a place where people can play

import UIKit

// Fibonacci Series Without Recursion

var a = -1
var b = 1
var c:Int = Int()
var num: Int = Int()
var sequence: Array = [Int]()

func fibonacci(numSteps: Int) ->[Int] {
    for _ in 0...numSteps
    {
        c = a+b
        sequence.append(c)
        a = b
        b = c
    }
    return sequence
}

print(fibonacci(numSteps: 5))


