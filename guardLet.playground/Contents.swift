import UIKit

var greeting = "Hello, playground"
//var greeting = "Hello, playground"
var optionalNumber : Int? = 23
func tripleNumber (number : Int?) {
    guard let number = number else {
        print("Number is optional")
        return
    }
    print("my triple number is \(number * 3)")

}
tripleNumber(number: optionalNumber)
