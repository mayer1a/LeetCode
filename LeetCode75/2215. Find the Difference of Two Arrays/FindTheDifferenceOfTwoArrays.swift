//
//  FindTheDifferenceOfTwoArrays.swift
//  LeetCode
//
//  Created by Artem Mayer on 24.05.2024.
//

import Foundation

// MARK: - 2215. Find the Difference of Two Arrays

/// Given two 0-indexed integer arrays nums1 and nums2, return a list answer of size 2 where:
/// answer[0] is a list of all distinct integers in nums1 which are not present in nums2.
/// answer[1] is a list of all distinct integers in nums2 which are not present in nums1.
///
/// Note that the integers in the lists may be returned in any order.
///
///
/// **Example 1:**
/// ```
/// Input: nums1 = [1,2,3], nums2 = [2,4,6]
/// Output: [[1,3],[4,6]]
/// Explanation:
/// For nums1, nums1[1] = 2 is present at index 0 of nums2, whereas nums1[0] = 1 and nums1[2] = 3 are not present in nums2. Therefore, answer[0] = [1,3].
/// For nums2, nums2[0] = 2 is present at index 1 of nums1, whereas nums2[1] = 4 and nums2[2] = 6 are not present in nums2. Therefore, answer[1] = [4,6].
/// ```
///
/// **Example 2:**
/// ```
/// Input: nums1 = [1,2,3,3], nums2 = [1,1,2,2]
/// Output: [[3],[]]
/// Explanation:
/// For nums1, nums1[2] and nums1[3] are not present in nums2. Since nums1[2] == nums1[3], their value is only included once and answer[0] = [3].
/// Every integer in nums2 is present in nums1. Therefore, answer[1] = [].
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= nums1.length, nums2.length <= 1000
/// -1000 <= nums1[i], nums2[i] <= 1000
/// ```
final class FindTheDifferenceOfTwoArrays_Solution {

    func findDifference(_ nums1: [Int], _ nums2: [Int], version: Version) -> [[Int]] {
        switch version {
        case .v1BruteForce:
            findDifference_v1(nums1, nums2)

        case .v2MoreOptimized:
            findDifference_v1(nums1, nums2, alt: true)

        case .v3MostOptimized:
            findDifference_v2(nums1, nums2)

        }
    }

    private func findDifference_v2(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var dict1: [Int: Int] = nums1.reduce(into: [:], { $0[$1] = 0 })
        let nonMutDict1 = dict1

        let dict2: [Int: Int] = nums2.reduce(into: [:]) {
            nonMutDict1[$1] == nil ? ($0[$1] = 0) : (dict1[$1] = nil)
        }
        return [Array(dict1.keys), Array(dict2.keys)]
    }

    private func findDifference_v1(_ nums1: [Int], _ nums2: [Int], alt: Bool = false) -> [[Int]] {
        if alt {
            var nums1 = Set<Int>(nums1)
            var nums2 = Set<Int>(nums2)
            return [diff_v2(&nums1, &nums2), diff_v2(&nums2, &nums1)]
        } else {
            return [diff_v1(nums1, nums2), diff_v1(nums2, nums1)]
        }
    }

    private func diff_v2(_ nums1: inout Set<Int>, _ nums2: inout Set<Int>) -> [Int] {
        var result = Set<Int>()
    
        nums1.forEach { num1 in
            if !nums2.contains(num1) {
                result.insert(num1)
            }
        }
    
        return Array(result)
    }

    private func diff_v1(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var n = Set<Int>()
    
        for num1 in nums1 {
            var exists = false
    
            for num2 in nums2 {
                if num1 == num2 {
                    exists.toggle()
                    break
                }
            }
            if !exists { n.insert(num1) }
        }
        return Array(n)
    }

}

extension FindTheDifferenceOfTwoArrays_Solution {

    enum Version {
        case v1BruteForce, v2MoreOptimized, v3MostOptimized
    }

}
