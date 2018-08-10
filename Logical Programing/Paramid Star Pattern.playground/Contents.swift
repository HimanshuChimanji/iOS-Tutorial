//: Playground - noun: a place where people can play

import UIKit


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


