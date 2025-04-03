import UIKit
func checkPalindrome<T: StringProtocol>(_ word: T) -> Bool {
    let word = word.lowercased()
        .components(separatedBy: .punctuationCharacters).joined()
        .components(separatedBy: .whitespacesAndNewlines).joined()
    if word == "" || word.count == 1 {
        return true
    } else {
        if word.first == word.last {
            let start = word.index(word.startIndex,offsetBy: 1, limitedBy: word.endIndex) ?? word.startIndex
            let end = word.index(word.endIndex,offsetBy: -1, limitedBy: word.startIndex) ?? word.endIndex
            return checkPalindrome(word[start..<end])
        } else {
            return false
        }
    }
}
    checkPalindrome("124421")
