//
//  RunningSumOf1dArray.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 1480. Running Sum of 1d Array (Array, Prefix Sum)

/// Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
/// Return the running sum of nums.
///
/// Example 1:
/// ```
/// Input: nums = [1,2,3,4]
/// Output: [1,3,6,10]
/// Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
/// ```
/// Example 2:
/// ```
/// Input: nums = [1,1,1,1,1]
/// Output: [1,2,3,4,5]
/// Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
/// ```
///
/// Example 3:
/// ```
/// Input: nums = [3,1,2,10,1]
/// Output: [3,4,6,16,17]
/// ```
///
/// Constraints:
/// ```
/// 1 <= nums.length <= 1000
/// -10^6 <= nums[i] <= 10^6
/// ```
final class RunningSumOf1dArray_Solution {

    func runningSum(_ nums: [Int]) -> [Int] {
        var iter = nums.makeIterator()
        var newNums: [Int] = []

        while let number = iter.next() {
            let prevNum = newNums.last ?? 0
            newNums.append(prevNum + number)
        }

        return newNums
    }
    
}
