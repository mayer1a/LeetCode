//
//  BinarySearch.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 704. Binary Search (Array, Binary Search)

/// Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums.
///
/// If target exists, then return its index. Otherwise, return -1.
/// You must write an algorithm with O(log n) runtime complexity.
///
///
/// **Example 1:**
/// ```
/// Input: nums = [-1,0,3,5,9,12], target = 9
/// Output: 4
/// Explanation: 9 exists in nums and its index is 4
/// ```
///
/// **Example 2:**
/// ```
/// Input: nums = [-1,0,3,5,9,12], target = 2
/// Output: -1
/// Explanation: 2 does not exist in nums so return -1
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= nums.length <= 10⁴
/// -10⁴ < nums[i], target < 10⁴
/// All the integers in nums are unique.
/// nums is sorted in ascending order.
/// ```
final class BinarySearch_Solution {

    func search(_ nums: [Int], _ target: Int) -> Int {
        var startIndex = 0
        var endIndex = nums.count - 1

        while startIndex <= endIndex {
            let midIndex = (startIndex + endIndex) / 2
            let midElement = nums[midIndex]

            guard midElement != target else { return midIndex }

            midElement < target ? (startIndex = midIndex + 1) : (endIndex = midIndex - 1)
        }

        return -1
    }

}
