//
//  ProductOfArrayExceptSelf.swift
//  LeetCode
//
//  Created by Artem Mayer on 04.06.2024.
//

import Foundation

// MARK: - 238. Product of Array Except Self

/// Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
///
/// The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
///
/// You must write an algorithm that runs in O(n) time and without using the division operation.
///
///
/// **Example 1:**
/// ```
/// Input: nums = [1,2,3,4]
/// Output: [24,12,8,6]
/// ```
///
/// **Example 2:**
/// ```
/// Input: nums = [-1,1,0,-3,3]
/// Output: [0,0,9,0,0]
/// ```
///
/// **Constraints:**
/// ```
/// 2 <= nums.length <= 10⁵
/// -30 <= nums[i] <= 30
/// The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
/// ```
///
/// - Note: Follow up: Can you solve the problem in O(1) extra space complexity? (The output array does not count as extra space for space complexity analysis.)
final class ProductOfArrayExceptSelf_Solution {

    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = [1]

        for i in 1..<nums.count {
            result.append(nums[i - 1] * result[i - 1])
        }

        var right = 1
        for i in (0..<nums.count).reversed() {
            result[i] *= right
            right *= nums[i]
        }

        return result
    }

    /// First solution
    // func productExceptSelf(_ nums: [Int]) -> [Int] {
    //     var result = [Int]()
    //     var left = 1, right = 1

    //     for i in 0..<nums.count {
    //         result.append(left)
    //         left *= nums[i]
    //     }

    //     for i in (0..<nums.count).reversed() {
    //         result[i] *= right
    //         right *= nums[i]
    //     }

    //     return result
    // }

}
