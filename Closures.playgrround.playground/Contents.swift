import UIKit
//   simple closure

let driving = {
    print("im driving")
}
driving()

// ACEEPTINg parameter in closures
let drivingHome = {(place : String)
    in print("i m going to \(place) on my bike")
}
drivingHome ("Lahore")

// Returing values from closure

let drivingWithReturn = {(place : String) -> String
    in
    return "i m going to \(place) on my bike"

}
let messsage = drivingWithReturn ("LHR")

//    CLOSURES AS PARAMETERS
func travel ( action : () -> Void) {
    print("I M GEETING READY TO GO")
    action ()
    print("I aarived !")}

travel(action: driving)

//
//
//     trailing closures

func travela(action: () -> Void) {
    print("I'm ready to go to mountains.")
    action()
    print("I arrived jhinga galli!")
}
travela() {
    print("I'm in my car listing some stuff")
}
//
//
//
//         Using closures as parameters when they accept parameters

func travelc(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travelc { (place: String) in
    print("I'm going to \(place) in my car")
}
//
//
//  using closures as parameters when they return values


func travelb(action: (String) -> String) {
    print("I'm getting ready to go somewhere.")
    let description = action("karachi")
    print(description)
    print("I arrived!")
}
travelb { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


//
//
//   Short hand syntax for closures
func traveld (action: (String) -> String) {
    print("I'm getting ready to go KHC.")
    let description = action("karachi")
    print(description)
    print("I arrived!")
}
traveld {
    "I'm going to \($0) in my car"
}

//
//
//
// two parameters accepting closure


func travelz(action: (String, Int) -> String) {
    print("I'm getting ready to go SKt.")
    let description = action("sialkot", 60)
    print(description)
    print("I arrived!")
}

travelz {
    "I'm going to \($0) at \($1) miles per hour."
}
//
//
//   Returning closures from functions
func travelf() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travelf()
result("isb")
let result2: Void = travelf()("isb")




//var greeting = "Hello, playground"
let names = ["", "Ambigious", "america", "tommy", "elo"]


func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)


//              syntax of a closure argumnt for the method , inline closure

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
  return s1 > s2
})
//         Inferring type from context

reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )

//         Implicit Returns from Single-Expression Closures


reversedNames = names.sorted(by: { s1, s2 in s1 > s2 } )
//
//            Short Hand Argument NAMES
//
reversedNames = names.sorted(by: {$0 > $1})

//             Operator Method

reversedNames = names.sorted(by: >)

//            trailing closure:

reversedNames = names.sorted() { $0 > $1 }

// if only one argument in a closure to be provided to function no need of paranthese

reversedNames = names.sorted { $0 > $1}



// Another Example with map func


let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [9, 98, 210]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}
print(strings)

//
//func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//    func incrementer() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementer
//}
//
//let incrementByTen = makeIncrementer(forIncrement: 10)
//incrementByTen()
//incrementByTen()
//let incrementBySeven = makeIncrementer(forIncrement: 7)
//incrementBySeven()
//
