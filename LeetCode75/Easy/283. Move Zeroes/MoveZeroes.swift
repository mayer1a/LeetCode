//
//  MoveZeroes.swift
//  LeetCode
//
//  Created by Artem Mayer on 23.05.2024.
//

import Foundation

// MARK: - 283. Move Zeroes

/// Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
///
/// Note that you must do this in-place without making a copy of the array.
///
///
/// **Example 1:**
/// ```
/// Input: nums = [0,1,0,3,12]
/// Output: [1,3,12,0,0]
/// ```
///
/// **Example 2:**
/// ```
/// Input: nums = [0]
/// Output: [0]
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= nums.length <= 10⁴
/// -2³¹ <= nums[i] <= 2³¹ - 1
/// ```
final class MoveZeroes_Solution {

    /// Simple solution
    func moveZeroes_v1(_ nums: inout [Int]) {
        var head = 0
        var tail = head + 1

        while tail <= nums.count - 1 {
            if nums[head] == 0 {
                if nums[tail] != 0 {
                    nums.swapAt(head, tail)
                    head += 1
                }
            } else {
                head += 1
            }

            tail += 1
        }
    }

    /// Optimized solution
    func moveZeroes_v2(_ nums: inout [Int]) {
        var tail = 0

        for head in 0..<nums.count {

            if nums[head] != 0 {
                nums.swapAt(tail, head)
                tail += 1
            }
        }
    }

}
