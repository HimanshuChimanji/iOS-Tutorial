//: Playground - noun: a place where people can play

import UIKit

var k = Int()
// Paramid Star Pattern    1st Type
//
//          *
//         ***
//        *****
//       *******
//      *********

print("\nParamid Star Pattern \t 1st Type\n")
for i in 1...5 {
    for j in 1...9 {
        if ( j>=6-i&&j<=4+i)
        {
        print("*", terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}


//***************************End******************************






// Paramid Star Pattern    2nd Type
//
//          1
//         222
//        33333
//       4444444
//      555555555

print("\nParamid Star Pattern \t 2nd Type\n")
for i in 1...5 {
    for j in 1...9 {
        if ( j>=6-i&&j<=4+i)
        {
            print(i, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}


//***************************End******************************






// Paramid Star Pattern    3rd Type
//
//          5
//         456
//        34567
//       2345678
//      123456789

print("\nParamid Star Pattern \t 3rd Type\n")
for i in 1...5 {
    for j in 1...9 {
        if ( j>=6-i&&j<=4+i)
        {
            print(j, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}


//***************************End******************************






//Paramid Star Pattern      4th Type
//
//          *
//         * *
//        * * *
//       * * * *
//      * * * * *

print("\nParamid Star Pattern \t 4th Type\n")

for i in 1...5 {
    k = 1
    for j in 1...9 {
        if ( j>=6-i&&j<=4+i && k==1)
        {
            k = 0
            print("*", terminator: "")
        }
        else{
            k = 1
            print(" ", terminator: "")
        }
    }
    print("")
}


//***************************End******************************






//Paramid Star Pattern      5th Type
//
//          1
//         2 2
//        3 3 3
//       4 4 4 4
//      5 5 5 5 5

print("\nParamid Star Pattern \t 5th Type\n")
for i in 1...5 {
    k = 1
    for j in 1...9 {
        if ( j>=6-i&&j<=4+i && k==1)
        {
            k = 0
            print(i, terminator: "")
        }
        else{
            k = 1
            print(" ", terminator: "")
        }
    }
    print("")
}


//***************************End******************************






//Paramid Star Pattern      6th Type
//
//          5
//         4 6
//        3 5 7
//       2 4 6 8
//      1 3 5 7 9

print("\nParamid Star Pattern \t 6th Type\n")
for i in 1...5 {
    k = 1
    for j in 1...9 {
        if ( j>=6-i&&j<=4+i && k==1)
        {
            k = 0
            print(j, terminator: "")
        }
        else{
            k = 1
            print(" ", terminator: "")
        }
    }
    print("")
}


//***************************End******************************






//Paramid Star Pattern      7th Type
//
//          1
//         121
//        12321
//       1234321
//      123454321


print("\nParamid Star Pattern \t 7th Type\n")

for i in 1...5 {
    k = 1
    for j in 1...9 {
        if ( j>=6-i&&j<=4+i)
        {
            
            print(k, terminator: "")
            if (j<5)
            {
               k += 1
            }
            else
            {
                k -= 1
            }
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}


//***************************End******************************





