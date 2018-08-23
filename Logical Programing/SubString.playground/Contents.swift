//: Playground - noun: a place where people can play

import UIKit


var    path    =    "one two three four"

//Create    start    and    end    indexes

let    startIndex    =    path.index(path.startIndex,    offsetBy:    4)

let    endIndex    =    path.index(path.startIndex,    offsetBy:    13)

let    sPath    =    path[startIndex    ..<    endIndex]    //returns    the    "/two/three"

//convert    the    substring    to    a    string

let    newStr    =    String(sPath)


//path.substring(to:    startIndex)      'substring(from:)' is deprecated
String(path[..<startIndex])      //    [Swift 4]  //returns    the    "/one"

//path.substring(from:    endIndex)      'substring(from:)' is deprecated
String(path[endIndex...])      //   [Swift 4]  //returns    the    "/four"

path.last

path.first

