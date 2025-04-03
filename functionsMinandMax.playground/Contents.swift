import UIKit

//var greeting = "Hello, playground"
class MyClass {
    func printUserName(name : String = "XcoDe") -> String {return name
        }
    func minAndMaxValues (array : [Int]) ->
    (minValue : Int, maxValue :Int){
        if(array.isEmpty) {
            return (0,0)
        }
        var currentMinValue = array [0]
        var currentMaxValue = array [0]
        for value in array [1..<array .count]{
            if value < currentMinValue {
                currentMinValue = value
            }
            else if value > currentMaxValue { currentMaxValue = value
        }
        }
        return(currentMinValue , currentMaxValue)
    }
}
let obj = MyClass()
let result = obj.minAndMaxValues(array : [0,1,2,3,5,6,7,9])
print("minimumvalue \(result.minValue) and MAX VALUE \(result.maxValue)")

