import UIKit
//Prime Number using for loop
print("\nPrime Number using for loop")
var count = Int()
let nc = 12
if nc>=1
{
    for number in 2...nc
    {
        if nc%number == 0
        {
            count += 1
        }
    }
    if count == 1
    {
        print("\(nc) is Prime number")
    }
    else
    {
        print("\(nc) is Not Prime Number")
    }
}
