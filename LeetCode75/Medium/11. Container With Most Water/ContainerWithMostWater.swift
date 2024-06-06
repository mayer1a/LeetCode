//
//  ContainerWithMostWater.swift
//  LeetCode
//
//  Created by Artem Mayer on 06.06.2024.
//

import Foundation

// MARK: - 11. Container With Most Water

/// You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).
///
/// Find two lines that together with the x-axis form a container, such that the container contains the most water.
///
/// Return the maximum amount of water a container can store.
///
/// Notice that you may not slant the container.
///
///
/// **Example 1:**
///
/// ![Example1 image](https://s3-lc-upload.s3.amazonaws.com/uploads/2018/07/17/question_11.jpg)
/// ```
/// Input: height = [1,8,6,2,5,4,8,3,7]
/// Output: 49
/// Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
/// ```
///
/// **Example 2:**
/// ```
/// Input: height = [1,1]
/// Output: 1
/// ```
///
/// **Constraints:**
/// ```
/// n == height.length
/// 2 <= n <= 10⁵
/// 0 <= height[i] <= 10⁴
/// ```
final class ContainerWithMostWater_Solution {

    func maxArea(_ height: [Int]) -> Int {
        var left = 0, right = height.count - 1
        var maxArea = 0

        while left < right {
            maxArea = max((right - left) * min(height[left], height[right]), maxArea)
            height[left] < height[right] ? (left += 1) : (right -= 1)
        }

        return maxArea
    }

}
