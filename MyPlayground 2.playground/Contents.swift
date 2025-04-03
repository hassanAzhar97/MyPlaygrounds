import UIKit
var optionalNumber: Int?
optionalNumber = 23
//IF LET
if let number = optionalNumber{
    print("I Have A Value")
}
else {
    print("i do not have a VALUE , i am nil")
}

// GUARD
func tripleNumber (number : Int?) {
    guard let number = number else { print("Existing Number")
        return
    }
    print("my triple number is \(number * 3)")
    
}
tripleNumber(number: optionalNumber)

// FORCE UNWRAPING
let forcedNumber = optionalNumber!


//OPTIONAL Chaining
struct Device {
    var type : String
    var price : Float
    var color : String

}
var myPhone : Device?
myPhone = Device (type : "phone",price : 983 , color : "sky blue")
let devicePrice = myPhone?.price
if let devicePrice = devicePrice {
    print("my total price = \(devicePrice + 9.99)")
}
//assert
var age = -1
//assert(myAge>0 , "my age is 22")


if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
   // assertionFailure("A person's age can't be less than zero.")
}
// nil coalescing

func username (for id: Int) -> String? {
if id==1{ return " MBIZION"
}
    else{
        return nil
    }
let usr = username (for : 1 ) ?? "ANY THING"
    print(username)
}
//class MyClass  {
//    func printname(name : String) -> String {
//        return name
//    }
//    func minAndMaxValues(array: [Int]) ->(minValue : Int , maxValue : Int) {
//        if(array.isEmpty){return(0,0)}
//        var currentMinValue = array [0]
//        var currentMaxValue = array [0]
//        for value in array [1..<array.count]
//        {
//            if value < currentMinValue {
//                currentMaxValue = value
//            }
//            else if value>currentMaxValue{currentMaxValue = value}
//        }
//        return(currentMinValue,currentMaxValue )
//    }
//}
//let obj = MyClass()
//let result = obj.minAndMaxValues(array: [9,68])
//print("min value = \(result.minValue) and Max Value= \(result.maxValue)")
