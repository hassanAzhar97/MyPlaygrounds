import UIKit
import Darwin
//     OPTIONAL BINDINg
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

if let actualNumber = Int (possibleNumber)
{
    print("the string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
}
else
{
    print("the string \"\(possibleNumber)\"couldnt be converted to an integer")
}
// if i want to use one var i can use it


    let myNumber = Int (possibleNumber)
if let myNumber = myNumber {
    print(myNumber)
}

 //    include as many optional bindings and boolean conditions separated by commas
if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
// Implicitly unwrPED OPtional

let possibleString : String? = "An Optional String"
let forcedString : String = possibleString!  // req !.

let assumedString : String! = "AN IMPLICITLY UN WRaPED OPTIONAL"

let implicitString : String = assumedString  // no need for !.
let optionalString = assumedString
if assumedString != nil {
    print(assumedString!)
}
if let definiteString = assumedString {
    print(definiteString)
}
//


// Optional chaining



class Employee {
    let name: String
    var manager: Employee? = nil
    
    init(name: String) {
        self.name = name
    }
    
    func printName() {
        print(name)
    }
}

let ch = Employee(name: "CH")
let lon = Employee(name: "Lon")
let solo = Employee(name: "Solo")
let bet = Employee(name: "Bet")

bet.manager = solo
solo.manager = lon
lon.manager = ch

if let manager = bet.manager {
    if let manager = manager.manager {
        manager.printName()
    }
}

bet.manager?.manager?.manager?.printName()

let teams = ["Dev": [solo, bet]]

teams["Dev"]?[1].manager?.printName()

let employee = teams["Dev"]?[1]






























//
//


class person1 {
    var residence1 : Residence1?

}
class Residence1
{
    var numberOfRooms = 1
}
let jon = person1()
jon.residence1 = Residence1()
if let roomCount = jon.residence1?.numberOfRooms{
    print("jon s residence has \(roomCount) rooms")
}

else {
    print("unable t0 retrieve the number of rooms.")
}
// model Classes for optionAl chaining


class Person {
    var residence: Residence?
}
class Room {
    let name : String
    init (name: String){
        self.name = name
    }
}
class Residence {
    var rooms: [Room] = []
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}
class Address {
    var buildingName : String?
    var buildingNumber : String?
    var street : String?
    func buildingIdentifier () -> String?  {
        if let buildingNumber = buildingNumber,let street = street {
            return "\(buildingNumber)\(street)"
        }
        else if buildingName != nil {
            return buildingName
        }
        else{
            return nil
        }
        }
    }

// Binding aonther optional

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else
{
    print("nil value")
}





