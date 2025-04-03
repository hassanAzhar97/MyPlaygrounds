import UIKit
import Foundation

//var greeting = "Hello, playground"
let numbers = [2,4,6,8,10,12]
 
for i in numbers {
    print(i)
}

for var i in numbers {
    i *= 2
    print(i)
}
let letters : Set = ["a","b","c"]

for l in letters {
    print(l)
}

let scores = ["scoti": 50 ,"Lori" : 60, "ch " : 100]

for (player,score) in scores {print(player,"Scored", score)}




for i in 1...3 {
    print(i)
}



for I in "SWIFT".enumerated(){
    print(I.0,I.1)
}



for _ in 1...3
{
    print(".")
}

for i in 2...10 where i % 2==0
{
    print(i)
    
}


for i in stride (from : 2 , to :10 , by : 2 )
{
    print(i)
}


for i in stride(from : 2 , through : 10 , by : 2) {
    print(i)
}


// while loop


while arc4random_uniform(10) + 1<10 {
    print(".",terminator : "")
}

repeat {
    print (".", terminator: "")
    
}

while arc4random_uniform(100) + 1 < 100



//
// if condotionals
//
//
//
//
//
//
//
//
//
//

let testScore = arc4random_uniform(50)+51
 if testScore >= 70
{
     print("YOu Passed!")
 }
if testScore >= 70 {
    if  testScore < 76 {
        print("C")
    } else if testScore < 80 {
        print("C+")
    } else if testScore < 86 {
       print("B") }
    else if
        testScore < 90{
        print("B+")
    }
    else if testScore < 96 {
        print("A")
    }
    else {
        print("A")
        
    }
}
    else {
        print("Study More and try again")
    }

//

//
//


//  Using Optionals

var firstName : String? = "Benish"

var lastName : String? = "Nidaw"

if let firstName = firstName {
    print("Hlow, \(firstName) ") }
          else {
        print("Welcome Guest !")
    }
          
if let firstName = firstName ,var lastName = lastName {
    lastName = lastName .uppercased()
    print("Hlo NAMe is \(firstName) \(lastName)")
    }

//
//
//       Guard Statement
//
//
//
//
let riders : [(name: String , heightInches : Int)]
riders = [
    ("ch",45),
    ("Mahi",60),
    ("Mana",30)
]
for rider in riders {
    guard rider.heightInches >= 42 else{
        print("\(rider.name) is NOT tall enough")
        continue
    }
    print("\(rider.name) is tall enough")
}


func updateSignFor (lifeguardOnDuty : String?) {
    guard let lifeguard = lifeguardOnDuty else {
        print("No LifeGuard On Duty . Swim At your own risk!")
    return
    }
    print("Life Guard On Duty:\(lifeguard)")
}
updateSignFor(lifeguardOnDuty: " Zubair")

//
//
//
//
//
//
//    SWITCH CASE
//

let testScores = arc4random_uniform(50) + 51


switch testScores {
case 100 :
    print("💯")
case 0...69 :
    print("Study more")
case 70...74:
    print("C")
case 75...100 :
    print("A+")
default : print("Try one more time")
}




//
//
//
//
//
//
//
//
//
//
//
let dy1 = arc4random_uniform(6) + 1
let dy2 = arc4random_uniform(6) + 1

switch (dy1,dy2)
{
case (1,1): fallthrough
case (6,6): print("30 Points")
case (1...2,1...2) : print("16 Points")
case _ where dy1 + dy2 == 7 :
print("5 Points")
case let (thrown , _) where dy1 == dy2 :
    switch thrown * 2{
    case 4,10 :
        print("8 points")
    default : print("10 points")
    }
default : break
}



//
//
//
//     defer statement


do {
    defer {print("Lift Off")}
    for i in (1...3).reversed() {print(i)}
    }
do {
    defer {print("ACTION")}
    defer {print("CAMERA") }
    defer {print("Lights")}
    defer {print("All Quit On Set")}
}


let a = ["a","b","c"]
let b = [2,3,4,6]
let ab = 2



for index in 0...a.count - 1{
    print("\(index)")
}

for table in 1...10{
    print("\(table) times 13 is \(table*13)")
}
//
//
//
//
//

//
//
//
//
//
//
///
/////
//////
////
////
////
////
// properties in swift

class DataImporter

{

var filename = "data.txt"
}
class DataManager {
    lazy var importer = DataImporter()
    var data : [String] = []
    
}


let manager = DataManager()
manager.data.append("some data")
manager.data.append("some more data")
print(manager.importer.filename)
//
//
//
//
struct Point {
    var x = 0.0 , y = 0.0
}
struct Size {var width = 0.0 , height = 0.0
    
}
struct Rect {
    var origin = Point ()
    var size = Size ()
    var center : Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point (x: centerX , y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point (x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
