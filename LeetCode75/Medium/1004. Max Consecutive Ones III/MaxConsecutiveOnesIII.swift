//
//  MaxConsecutiveOnesIII.swift
//  LeetCode
//
//  Created by Artem Mayer on 10.06.2024.
//

import Foundation

// MARK: - 1004. Max Consecutive Ones III

/// Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.
///
///
/// **Example 1:**
/// ```
/// Input: nums = [1,1,1,0,0,0,1,1,1,1,0], k = 2
/// Output: 6
/// Explanation: [1,1,1,0,0,1,1,1,1,1,1]
/// Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.
/// ```
///
/// **Example 2:**
/// ```
/// Input: nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], k = 3
/// Output: 10
/// Explanation: [0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1]
/// Bolded numbers were flipped from 0 to 1. The longest subarray is underlined.
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= nums.length <= 10⁵
/// nums[i] is either 0 or 1.
/// 0 <= k <= nums.length
/// ```
final class MaxConsecutiveOnesIII_Solution {

    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var k = k
        var l = 0, r = 0

        while r < nums.count {
            if nums[r] == 0 {
                k -= 1
            }

            if k < 0 {
                k += 1 - nums[l]
                l += 1
            }

            r += 1
        }

        return r - l
    }

}
