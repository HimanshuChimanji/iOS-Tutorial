import UIKit

var b = 1
var c = Int()


func factorial(numSteps: Int){
   c = numSteps             // 5 , 4 ,   3 ,  2 ,  1
    while c >= 1 {          // 5 , 4,    3 ,  2 ,  1
        b = b*c             // 5 , 20 , 60 , 120 , 120
        c -= 1              // 4 , 3 ,  2,   1,    0
    }
    print("Factorial of number \(numSteps) is \(b)")
}

// Enter Your Number Here
factorial(numSteps: 5)
// 4 12 24
