import UIKit

var greeting = "Hello, playground"

func stringReverse(_ str: String) -> String {
    let filteredStr = str.lowercased().filter{
        $0.isLetter || $0.isNumber
    }
    var charsArr = Array(filteredStr)
    var left = 0
    var right = charsArr.count - 1
    while left < right {
        let temp = charsArr[right]
        charsArr[left] = charsArr[right]
        charsArr[right] = temp
        left += 1
        right -= 1
    }
    return String(charsArr)
}

print(stringReverse("Hello"))



func nonRepeatingChars( str: String) -> Character {
    var freq: [Character:Int] = [:]
    // count the no. of characters in a dictionary
    for char in str {
        freq[char, default:0] += 1
    }
    //
    for char in str {
        if freq[char] == 1 {
            return char
        }
    }
    return " "
}

print(nonRepeatingChars(str: "hheeeroi"))


func uniqueCharIndex(str: String) -> Int {
    var freq: [Character: Int] = [:]
    for char in str {
        freq[char, default: 0] += 1
    }
    
    for (index, char) in str.enumerated() {
        if freq[char] == 1 {
            return index
        }
    }
    return 0
}

print(uniqueCharIndex(str: "popopn"))
print(uniqueCharIndex(str: "hargharmodiii"))
print(uniqueCharIndex(str: "paradeep"))

func containsDuplicate(nums: String) -> Bool {
    var seen: [Character: Int] = [:]
    for num in nums {
        seen[num, default:0] += 1
    }
//    for count in seen.values {
//        if count > 1{
//            return true
//        }
//    }
    for (index,value) in nums.enumerated() {
        if seen[value] == 1 {
            return true
        }
    }
    return false
}
print(containsDuplicate(nums: "bdbhdfgbdf"))
