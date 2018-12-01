//: Playground - noun: a place where people can play

import UIKit

// [1,1,2,2,3,4,4,5,5] find number which is not repeating
print("[1,1,2,2,3,4,4,5,5] find number which is not repeating")
let array = [1,1,2,2,3,4,4,5,5]
var count = Int()

for i in 0..<array.count
{
    count = 0
    for j in 0..<array.count
    {
        if i != j
        {
            if array[i] == array[j]
            {
                count += 1
            }
        }
    }
    if count == 0
    {
        print(array[i])
    }
}
