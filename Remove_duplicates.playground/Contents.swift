import UIKit

var greeting = "Hello, playground"

// Removing duplicates form an array

func removeDuplicates(arr: [Int]) -> Int {
    // explores new element---> will only move if any new element is found by right pointer
    var left = 0
    var arr = arr
    // right --> will scan the entire array
    for right in 1..<arr.count {
        if arr[right] != arr[left] {
            left += 1
            arr[left] = arr[right]
        }
    }
    return left + 1
}

var arr = [1,1,2,3,4,5,6]
print(removeDuplicates(arr: arr))

// for in loops use
// MARK: 1. Array traverse karna
// for i in 0..<arr.count { }         // ✅ most common
//
// MARK: 2. Value directly chahiye
// for num in arr { }                  // ✅ clean
//
// MARK: 3. Index + Value dono chahiye
//for (index, num) in arr.enumerated() { }  // ✅ Two Sum mein use kiya!
//
// 4. Reverse traverse
// for i in (0..<arr.count).reversed() { }  // ✅ palindrome check

let arr1 = [10, 20, 30]
//1. Value directly chahiye ---> Looping Over Array
for num in arr1 {
    print(num)
}

// 2. Basic Range — Inclusive
for i in 0...5 {
    print(i)
}

// 3. Loop With Index — enumerated() ----> Index + Value dono chahiye

let arr3 = [10,20,30,40,50]

for (index,value) in arr3.enumerated() {
    print("index: \(index), value: \(value)")
}

// Two sum
//func twoSum(arr: [Int], target: Int) -> Int {
//    
//}

// MARK: Removing the duplicate elements in an array and return the array

func removeDuplicatesArray(arr: [Int]) -> [Int] {
    var arr = arr.sorted()
    var left = 0
    for right in 1..<arr.count {
        if arr[left] != arr[right] {
            left += 1
            arr[left] = arr[right]
        }
    }
    return Array(arr[0...left])
}
print(removeDuplicatesArray(arr: [10,10,20,100,90,40]))

// Concept:
// nums[0...left]
// yeh ArraySlice return karta hai — pura Array nahi!

// Array(nums[0...left])
// ArraySlice ko proper Array mein convert karta hai ✅


let arr4 = [1,2,3,4,5]
print(arr4[0...2])

func removeDuplicateNumbers(_ nums: [Int]) -> [Int] {
    var arr = nums.sorted()
    var freq: [Int: Bool] = [:]
    var res:[Int] = []
    for num in arr {
        if freq[num] == nil {
            freq[num] = true
            res.append(num)
        }
    }
    return res
}
var nums = [1,2,33,44,90,13,13,100]
print(removeDuplicateNumbers(nums))

// MARK: remove the duplicates from an unsorted array
func removeTheDuplicates(nums: [Int]) -> [Int] {
    var arr = nums
    var freq: [Int:Bool] = [:]
    var result: [Int] = []
    for num in arr {
        if freq[num] == nil {
            freq[num] = true
            result.append(num)
        }
    }
    return result
}

var numsArr = [2,1,1,3,9,7,8,9,2,0,0,6,5]
print(removeTheDuplicates(nums: numsArr))


// MARK: removing duplicates from the strinmg
func removeDuplicatesString(s: String) -> String {
    var result: String = ""
    var freq: [Character:Bool] = [:]
    for count in s {
        if freq[count] == nil {
            freq[count] = true
            result.append(count)
        }
    }
    return result
}

var dup = "Programming"
print(removeDuplicatesString(s: dup))

// MARK: first non-repeating characters
func removeFirstNonrepeating(s: String) -> Character {
    var freq: [Character:Int] = [:]
    
    for char in s {
        freq[char,default: 0] += 1
    }
    
    for char in s {
        if freq[char] == 1 {
            return char
        }
    }
    return " "
}
var str = "Swayaaaaam"
print(removeFirstNonrepeating(s: str))

func findTwoSum(nums: [Int], target: Int) -> [Int] {
    var arr = nums.sorted()
    
    var lef = 0
    var right = arr.count - 1
    while lef < right {
        var sum = arr[lef] + arr[right]
        if sum == target {
            return [lef,right]
        } else if sum < target {
            lef += 1
        } else {
            right -= 1
        }
    }
    return []
}

var arr2SUm = [2,1,5,6,7,9,0]
// here, the sorted array index is being returned
print(findTwoSum(nums: arr2SUm, target: 15))
