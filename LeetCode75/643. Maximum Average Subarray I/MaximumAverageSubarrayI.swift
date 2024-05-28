//
//  MaximumAverageSubarrayI.swift
//  LeetCode
//
//  Created by Artem Mayer on 23.05.2024.
//

import Foundation

// MARK: - 643. Maximum Average Subarray I


/// You are given an integer array nums consisting of n elements, and an integer k.
///
/// Find a contiguous subarray whose length is equal to k that has the maximum average value and return this value. Any answer with a calculation error less than 10-5 will be accepted.
///
///
/// **Example 1:**
/// ```
/// Input: nums = [1,12,-5,-6,50,3], k = 4
/// Output: 12.75000
/// Explanation: Maximum average is (12 - 5 - 6 + 50) / 4 = 51 / 4 = 12.75
/// ```
///
/// **Example 2:**
/// ```
/// Input: nums = [5], k = 1
/// Output: 5.00000
/// ```
///
/// **Constraints:**
/// ```
/// n == nums.length
/// 1 <= k <= n <= 105
/// -104 <= nums[i] <= 104
/// ```
final class MaximumAverageSubarrayI_Solution {

    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var sum = nums[..<k].reduce(0, { $0 + $1 })
        var max = Double(sum) / Double(k)

        for i in k..<nums.count {
            sum += nums[i] - nums[i - k]

            let avg = Double(sum) / Double(k)
            if avg > max {
                max = avg
            }
        }

        return max
    }

}
