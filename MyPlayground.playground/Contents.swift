import UIKit

var greeting = "Hello, playground"

func twoSumofIntegers(nums: [Int], target: Int) -> [Int] {
    var freq: [Int: Int] = [:]
    for (index,num) in nums.enumerated() {
        let need = target - num
        if let foundIndex = freq[need] {
            return [foundIndex, index]
        }
        freq[num] = index
    }
    return []
}
print(twoSumofIntegers(nums: [2,1,4,3,7,6], target: 9))

func containsDuplicate(nums: [Int]) -> Bool {
    var seen: [Int:Int] = [:]
    for num in nums {
        seen[num, default:0] += 1
    }
    for count in seen.values {
        if count > 1{
            return true
        }
    }
    return false
}
print(containsDuplicate(nums: [1,1,2,3,4,5,6,9]))

//dict[key]
//    ↓
//Key might not exist
//    ↓
//Optional
//    ↓
//nil if missing
//
//
//dict[key, default: 0]
//    ↓
//Key might not exist
//    ↓
//Use 0 instead

func reverseString(str: String) -> String {
    let filter = str.lowercased().filter {
        $0.isLetter || $0.isNumber
    }
    var chars = Array(filter)
    var left = 0
    var right = str.count - 1
    
    while left < right {
        let temp = chars[left]
        chars[left] = chars[right]
        chars[right] = temp
        left += 1
        right -= 1
    }
    return String(chars)
}

print(reverseString(str: "hello"))


func longestConsecutive(arya: [Int]) -> Int {
    var arr: [Int] = arya.sorted()
    var left = 0
    var count = 0
    
    for right in 1..<arr.count {
        if arr[right] - arr[left] == 1 {
            count += 1
            left += 1
        }
    }
    return count
}

print(longestConsecutive(arya: [2,9,8,3,4,5,5,0,1]))
