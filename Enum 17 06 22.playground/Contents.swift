import UIKit

//var greeting = "Hello, playground"

enum  SocialPlatform : String , CaseIterable{
    case twitter    = "favourite platform"
    case facebook   = "Never use this"
    case instagram  = "Preety pictures"
    case linkdIn    = "Start posting here"
}
func shareImage (on platform : SocialPlatform){
    switch platform {
        
    case .twitter:
        print("Share Pics on Twitter")
    case .facebook:
        print("Share Pics on fb")
    case .instagram:
        print("Share Pics on insta")

    case .linkdIn:
        print("Share Pics on linkdin")

    }
}
shareImage(on: .linkdIn)

func getOpinion(on platform :  SocialPlatform){
    print(platform.rawValue)
}


for platform in SocialPlatform.allCases {
    print(platform.rawValue)
}


//
//

///
///
///
///
///
///
///
enum SocialMediaPlatform {
    case twitter (followers : Int)
    case youtube ( subscribers :Int)
    case instagram
    case linkdIn
}
func getSponsershipEligibility (for platform : SocialMediaPlatform){
    switch platform {
    case.twitter(let followers) where followers > 10_000:
        print("Eligible for sponsored Tweet.")
    case .youtube(let subscribers) where subscribers > 25_000 :
        print("Eligible for sponsored video.")
    case .instagram, .linkdIn, .twitter, .youtube:
        print("Not Eligible for sposorship")
    }
}

getSponsershipEligibility(for: .twitter(followers: 1500))
