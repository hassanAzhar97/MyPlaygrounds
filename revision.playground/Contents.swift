import UIKit

var greeting = "Hello, playground"
var countdown: Int = 5
repeat {
    print("\(countdown)...")
    countdown -= 1
} while countdown > 0
print("Lift off!")
//
var people = 0
repeat {
    people += 1
    print("There's space another person")
} while people < 10
print("We're full!")
//

var number = 0
repeat {
    number += 2
    print("\(number) is an even number.")
} while number < 20

//

var scales = ["A", "B", "C", "D", "E"]
var scaleCounter = 0
repeat {
    print("Play the \(scales[scaleCounter]) scale")
    scaleCounter += 1
} while scaleCounter < 3
//
var peoples = 2
while peoples < 10 {
    peoples += 2
    if peoples == 10 {
        print("We got 10 people.")
    }
}
//
for i in 1...15 {
    if i % 3 == 0 {
        if i % 5 == 0 {
            print("\(i) is a multiple of both 3 and 5.")
        }
    }
}
//
for name in ["Taylor"] {
    print("Welcome, \(name)!")
}
//
outer: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("Product is \(product)")
        break outer
    }
}

//
var population : Double = 7_500_000_000
repeat {
    print("More babies have been born.")
    break
    population *= 1.0001
} while true

//
struct Developer {
    var name : String
    var jobTitle : String
    var yearExp : Int
  
    }
var moon =  (name:"SEAN", jobTitle: "ios dev", yearExp: 5)
var joe = moon
joe.name = "joe"
moon.name

//
func count(to: Int) {
    for i in 1...to {
        print("I'm counting: \(i)")
    }
}
count(to: 3)

//

func walkDogs(destination: String) {
    print("Let's go for a walk to \(destination).")
}
walkDogs(destination: "the park")

//
func numberOfTims(in array: [String]) -> Int {
    var count = 0
    for name in array {
        if name == "Tim" {
            count += 1
        }
    }
    return count
}



//






