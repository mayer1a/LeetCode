//
//  UniqueNumberOfOccurrences.swift
//  LeetCode
//
//  Created by Artem Mayer on 26.05.2024.
//

import Foundation

// MARK: - 1207. Unique Number of Occurrences

/// Given an array of integers arr, return true if the number of occurrences of each value in the array is unique or false otherwise.
///
///
/// **Example 1:**
///  ```
/// Input: arr = [1,2,2,1,1,3]
/// Output: true
/// Explanation: The value 1 has 3 occurrences, 2 has 2 and 3 has 1. No two values have the same number of occurrences.
/// ```
///
/// **Example 2:**
/// ```
/// Input: arr = [1,2]
/// Output: false
/// ```
///
/// **Example 3:**
/// ```
/// Input: arr = [-3,0,1,-3,1,1,1,-3,10,0]
/// Output: true
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= arr.length <= 1000
/// -1000 <= arr[i] <= 1000
/// ```
final class UniqueNumberOfOccurrences_Solution {

    /// Brute force solution
    func uniqueOccurrences_v1(_ arr: [Int]) -> Bool {
        var uniqueDict: [Int: Int] = [:]

        arr.forEach {
            uniqueDict[$0] = (uniqueDict[$0] ?? 0) + 1
        }

        for el in uniqueDict {
            if uniqueDict.contains(where: { $0.key != el.key && $0.value == el.value }) {
                return false
            }
        }

        return true
    }

    /// Optimized solution
    func uniqueOccurrences_v2(_ arr: [Int]) -> Bool {
        var uniqueDict: [Int: Int] = [:]

        arr.forEach {
            uniqueDict[$0, default: 0] += 1
        }

        var arr = [Int]()

        for occurrences in uniqueDict.values {
            if arr.contains(occurrences) {
                return false
            }
            arr.append(occurrences)
        }

        return true
    }

}
