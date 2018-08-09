//: Playground - noun: a place where people can play

import UIKit


// Star Pattern First    1st Type
//
//      *
//      **
//      ***
//      ****
//      *****

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


// Star Pattern First      2nd Type
//
//      1
//      22
//      333
//      4444
//      55555

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


//Star Pattern First      3rd Type
//
//      1
//      12
//      123
//      1234
//      12345

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

//Star Pattern Second      1st Type
//
//          *
//         **
//        ***
//       ****
//      *****

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

//Star Pattern Second      2nd Type
//
//          1
//         22
//        333
//       4444
//      55555

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

//Star Pattern Second      3rd Type
//
//          5
//         45
//        345
//       2345
//      12345


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
//
//Star Pattern Third      1st Type
//
//      *****
//      ****
//      ***
//      **
//      *


print("\nStar Pattern Third \t 1st Type \n")

for i in 1...5 {
    for j in 1...5 {
        if ( j<=6-i)
        {
            print("*", terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}

//Star Pattern Third      2nd Type
//
//      11111
//      2222
//      333
//      44
//      5

print("\nStar Pattern Third \t 2nd Type \n")

for i in 1...5 {
    for j in 1...5 {
        if ( j<=6-i)
        {
            print(i, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}

//Star Pattern Third      3rd Type
//
//      12345
//      1234
//      123
//      12
//      1

print("\nStar Pattern Third \t 3rd Type \n")

for i in 1...5 {
    for j in 1...5 {
        if ( j<=6-i)
        {
            print(j, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}

//Star Pattern Fourth      1st Type
//
//      *****
//       ****
//        ***
//         **
//          *


print("\nStar Pattern Fourth \t 1st Type \n")

for i in 1...5 {
    for j in 1...5 {
        if ( j>=i)
        {
            print("*", terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}

//Star Pattern Fourth      2nd Type
//
//      11111
//       2222
//        333
//         44
//          5


print("\nStar Pattern Fourth \t 2nd Type \n")

for i in 1...5 {
    for j in 1...5 {
        if ( j>=i)
        {
            print(i, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}

//Star Pattern Fourth      3rd Type
//
//      12345
//       2345
//        345
//         45
//          5

print("\nStar Pattern Fourth \t 3rd Type \n")

for i in 1...5 {
    for j in 1...5 {
        if ( j>=i)
        {
            print(j, terminator: "")
        }
        else{
            print(" ", terminator: "")
        }
    }
    print("")
}
