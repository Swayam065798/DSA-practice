import UIKit

var greeting = "Hello, playground"
//Given an array of integers and a target value, return the indices of the two numbers whose sum equals the target.
//
//Input:
//nums = [2,7,11,15]
// freq[7]
//target = 9

func twoSum(nums: [Int], target: Int) -> [Int] {
    var freq: [Int:Int] = [:]
    for (index,num) in nums.enumerated() {
        let need = target - num
        if  let found = freq[need] {
            return [found, index]
        }
        freq[num] = index
    }
    return []
}

print(twoSum(nums: [2,7,11,15], target: 9))

//Given a collection of intervals, merge all overlapping intervals.
//
//Input:
//[[1,3],[2,6],[8,10],[15,18]]
//
//Output:
//[[1,6],[8,10],[15,18]]
func mergeintervals(nums: [[Int]]) -> [[Int]]{
    
}
