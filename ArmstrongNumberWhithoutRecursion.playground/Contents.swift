//: Playground - noun: a place where people can play

import UIKit

var p = Int()
var r = Int()
var x = Int()
var s = Int()

for n in 1...1000
{
    s = 0
    x = n
    while (x != 0) {
        r = x%10
        s = s+r*r*r
        x = x/10
        
    }
    
    if s == n
    {
        print("Armstrong Number: \(n)")
    }
}
