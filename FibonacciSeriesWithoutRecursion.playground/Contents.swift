//: Playground - noun: a place where people can play

import UIKit

// Fibonacci Series Without Recursion
func fibonacci(numSteps: Int) ->[Int] {
    var sequence = [0,1]
    if numSteps == 1
    {
        return sequence
    }
    else if numSteps == 0
    {
        return [0]
    }
    for _ in 0...numSteps - 2
    {
        let first = sequence[sequence.count-2]
        let second = sequence.last!
        sequence.append(first+second)
    }
    return sequence
}

print(fibonacci(numSteps: 5))
