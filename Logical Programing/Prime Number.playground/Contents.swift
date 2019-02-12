import UIKit
//Prime Number using for loop
print("\nPrime Number using for loop")
var count = Int()
let nc = 2
if nc>=1
{
    for number in 1...nc
    {
        if nc%number == 0
        {
            print(number)
            count += 1
        }
    }
    if count == 2
    {
        print("\(nc) is Prime number")
    }
    else
    {
        print("\(nc) is Not Prime Number")
    }
}
