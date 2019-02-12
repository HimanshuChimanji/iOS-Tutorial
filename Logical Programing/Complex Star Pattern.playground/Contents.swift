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
for row in 1...5 {
    for Column in 1...9 {
        if ( Column<=6-row||Column>=4+row)
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






// Complex Star Pattern First    2nd Type
//
//        111111111
//        2222 2222
//        333   333
//        44     44
//        5       5

print("\nComplex Star Pattern First \t 2nd Type\n")
for row in 1...5 {
    for Column in 1...9 {
        if ( Column<=6-row||Column>=4+row)
        {
            print(row, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}


//***************************End******************************






// Complex Star Pattern First    3rd Type
//
//      123456789
//      1234 6789
//      123   789
//      12     89
//      1       9

print("\nComplex Star Pattern First \t 3rd Type\n")
for row in 1...5 {
    for Column in 1...9 {
        if ( Column<=6-row||Column>=4+row)
        {
            print(Column, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}


//***************************End******************************







// Complex Star Pattern First    4th Type
//
//      123456789
//      1234 6789
//      123   789
//      12     89
//      1       9

print("\nComplex Star Pattern First \t 4th Type\n")

var k = Int()
for row in 1...5 { // 1
    k = 1 // 1
    for Column in 1...9 { // 1
        if ( Column<=6-row||Column>=4+row)
        {
            
            print(k, terminator: "")
            if (Column<5)
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
            if Column == 5
            {
                k -= 1
            }
        }
    }
    print("")
}


//***************************End******************************







