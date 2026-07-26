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
