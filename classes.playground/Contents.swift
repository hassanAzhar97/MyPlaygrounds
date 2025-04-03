import UIKit

//var greeting = "Hello, playground"

class Developer {
    var name : String
    var jobTitle : String
    var yearExp : Int
    init (name : String,jobTitle : String , yearExp : Int){
    self.name = name
    self.jobTitle = jobTitle
    self.yearExp = yearExp
    }
    func introduceYourSelf () {
        print ("HI , MY NAME IS \(name) and I'm an \(jobTitle) witth EXPERIENCE \(yearExp)")
    }
    
}
class iosDeveloper : Developer {
    var favFrameWork : String?
    func favFrame(){
        print(favFrameWork ?? "I DO NOT HAVE A FAV FRAME WORK")
    }
}
let moon = iosDeveloper (name:"SEAN", jobTitle: "ios dev", yearExp: 5)
moon.favFrameWork = "ARKIT"
moon.favFrame()
moon.introduceYourSelf()
