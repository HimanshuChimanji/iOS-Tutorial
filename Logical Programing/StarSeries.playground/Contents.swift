//: Playground - noun: a place where people can play

import UIKit
// Star Pattern First

//   *
//   **
//   ***
//   ****
//   *****
//
print("\nStar Pattern First \t 1st Type\n")
for i in 1...5 {
    for j in 1...5 {
        if ( i>=j)
        {
        print("*", terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}
print("\nStar Pattern First \t 2nd Type \n")
for i in 1...5 {
    for j in 1...5 {
        if ( i>=j)
        {
            print(i, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}
print("\nStar Pattern First \t 3rd Type \n")
for i in 1...5 {
    for j in 1...5 {
        if ( i>=j)
        {
            print(j, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}

print("\nStar Pattern Second \t 1st Type \n")

for i in 1...5 {
    for j in 1...5 {
        if ( j>=6-i)
        {
            print("*", terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}

print("\nStar Pattern Second \t 2nd Type \n")

for i in 1...5 {
    for j in 1...5 {
        if ( j>=6-i)
        {
            print(i, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}

print("\nStar Pattern Second \t 3rd Type \n")

for i in 1...5 {
    for j in 1...5 {
        if ( j>=6-i)
        {
            print(j, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}
