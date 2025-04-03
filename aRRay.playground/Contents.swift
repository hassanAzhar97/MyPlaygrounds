import UIKit

//var greeting = "Hello, playground" ARRAY INITILIZATION
var threeStooges = ["leo","spartan","apple"]

var inningScores : [Int]
inningScores = []

var testScores = [Double]()

var quizScores: Array<Double> = []

var allScores = Array<Double>()

var counters = Array(repeating: 0, count: 3)

var averageScores = [Float](repeating: 0.0, count: 4)

var optionalArray : [Int]?

var arrayOfOptionls : [Int?] = [nil,4,9,7,nil,6]

var optionalArrayOfOptional : [Int?]?

var arrayOfAny : [Any] = [1,2.0,4,"three"]

threeStooges.count

threeStooges.contains("leo")

let larry = threeStooges [1]
threeStooges[1] = "jedi (\"Curly\")"
print(threeStooges)

let meo = threeStooges.first
let and = threeStooges.last!

let threeStoogesSorted = threeStooges.sorted()

threeStooges.sort()

threeStooges.append("Shempion")

threeStooges.append(contentsOf: ["moon","nagra","grp"])

threeStooges.insert("Sahi", at: 0)

let notAStooge = threeStooges.removeFirst()

let jedi = threeStooges.removeLast()

var famousGroupsOfThree = [
    threeStooges,
    ["Athons","Pothos","ARMIES"],
    ["23","324","3454"]
    
]
let armies = famousGroupsOfThree[1][2]
