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
// 1. Array traverse karna
// for i in 0..<arr.count { }         // ✅ most common
//
//2. Value directly chahiye
// for num in arr { }                  // ✅ clean
//
//3. Index + Value dono chahiye
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

// Removing the duplicate elements in an array and return the array

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
