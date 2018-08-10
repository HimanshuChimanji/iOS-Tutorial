//: Playground - noun: a place where people can play

import UIKit


// Complex Star Pattern First    1st Type
//
//      *********
//      **** ****
//      ***   ***
//      **     **
//      *       *
print("\nComplex Star Pattern First \t 1st Type\n")
for i in 1...5 {
    for j in 1...9 {
        if ( j<=6-i||j>=4+i)
        {
        print("*", terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}

// Complex Star Pattern First    2nd Type
//
//        111111111
//        2222 2222
//        333   333
//        44     44
//        5       5

print("\nComplex Star Pattern First \t 2nd Type\n")
for i in 1...5 {
    for j in 1...9 {
        if ( j<=6-i||j>=4+i)
        {
            print(i, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}

// Complex Star Pattern First    3rd Type
//
//      123456789
//      1234 6789
//      123   789
//      12     89
//      1       9

print("\nComplex Star Pattern First \t 3rd Type\n")
for i in 1...5 {
    for j in 1...9 {
        if ( j<=6-i||j>=4+i)
        {
            print(j, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}

