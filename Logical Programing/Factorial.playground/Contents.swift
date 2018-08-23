import UIKit

var b = 1
var c = Int()


func factorial(numSteps: Int){
   c = numSteps
    while c >= 1 {
        b = b*c
        c -= 1
    }
    print("Factorial of number \(numSteps) is \(b)")
}

// Enter Your Number Here
factorial(numSteps: 5)
