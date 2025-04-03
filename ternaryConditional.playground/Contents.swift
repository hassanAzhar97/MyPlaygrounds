import UIKit
import Darwin

//var greeting = "Hello, playground"
let name = "ch z"
let salutation = name.isEmpty ? "hheheh!":"HIE , \(name)!"
name.isEmpty ? print("no name") : print ("name is \(name)")

// program to check pass or fail
let marks = 60

// use of ternary operator
let result = (marks >= 40) ? "pass" : "fail"

print("You " + result + " the exam")
//


//(
let riders : [(name : String , heighInches : Int)]
riders  = [
    ("ch zain",46),
    ("LALA", 34),
    ("murli",64)
]
for rider in riders
{
    guard rider.heighInches >= 44 else {
        print("\(rider.name) is not tall enough")
        continue
    }
    print("\(rider.name) is tall enough")
}
func updateSignFor(lifeguardOnDuty : String?)
{
    guard let lifeguard = lifeguardOnDuty else {
    print("NO LIFEGUARD ON DUTY .SWIM CAREFULLY ")
        return
    }
print("LIFE GUARD ON DUTY : \(lifeguard)")
}

updateSignFor(lifeguardOnDuty: nil)
updateSignFor(lifeguardOnDuty: "C. J")
//

//

//
let var1 = arc4random_uniform(9) + 3
let var2 = arc4random_uniform(8) + 2
switch (var1,var2){
case (1,1):
    fallthrough
case (6,6):
    print("30 points")
case (1...2,1...2):
    print("16 points")
case _ where var1 + var2 == 9:
    print("5 POINTS")
case let (thrown,_) where var1 == var2 :
    switch thrown * 2 {
    case 4,10:
        print("9 POINTS")
    default :
        print("100 points")
    }
default : break
    
}
//



// access items of an array
let languages = ["Swift", "Java", "Go", "JavaScript"]

for language in languages {
      print(language)
}


////
///
///
/////
///
////
// remove Java from an array

// languages = ["Swift", "Java", "Go", "JavaScript"]

for language in languages where language != "Java"{
  print(language)
}




// while loop for showing game level

var currentLevel:Int = 0, finalLevel:Int = 5
let gameCompleted = true
while (currentLevel <= finalLevel) {

  if gameCompleted {
    print("You have passed level \(currentLevel)")
      currentLevel += 1
  }
}
print("Level Ends")


//

//




let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base }
print("\(base)to power of \(power) is \(answer)")
