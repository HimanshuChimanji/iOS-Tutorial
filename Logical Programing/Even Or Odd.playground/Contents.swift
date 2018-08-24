import UIKit

// Extention For String To Convert String to binary

extension String {
    init<B: FixedWidthInteger>(fullBinary value: B) {
        self = value.words.reduce(into: "") {
            $0.append(contentsOf: repeatElement("0", count: $1.leadingZeroBitCount))
            $0.append(String($1, radix: 2))
        }
    }
}

// Enter Your Number Here
let num  = 101

// Even Or Odd With Modulas

func evenOrOddWithModulas(numSteps: Int){
    if numSteps%2 == 0
    {
        print("\(numSteps) is Even Number")
    }
    else
    {
        print("\(numSteps) is Odd Number")
    }
}

// Even Or Odd Without Modulas
func evenOrOddWithoutModulas(numSteps: Int)
{
    let val = String(fullBinary: numSteps)
    let lastBinaryDigit = val.last
    if lastBinaryDigit == "0"
    {
        print("\(num) is Even Number")
    }
    else
    {
        print("\(num) is Odd Number")
    }
}
print("Even Or Odd With Modulas:")
evenOrOddWithModulas(numSteps: num)


print("\nEven Or Odd Without Modulas:")
evenOrOddWithoutModulas(numSteps: num)
