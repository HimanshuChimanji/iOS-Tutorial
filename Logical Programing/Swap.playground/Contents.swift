import UIKit
//Swap B/w Number
// Type 1
print("Type 1: a = 10 , b = 20")
var a = 10;
var b = 20;
var c = Int()

c = a ;
a = b ;
b = c ;

print("a:\t\(a)");
print("b:\t\(b)");

// Type 2
print("\nType 2: d = 50 , e = 100")

var d = 50;
var e = 100;

d = d + e;
e = d - e;
d = d - e;

print("d: \t\(d)");
print("e: \t\(e)");



class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}
let john = Person()
//let roomCount = john.residence!.numberOfRooms

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

var vaue: String?  = String()
//vaue = "a"
print(vaue ?? "a")
