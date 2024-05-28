//
//  IsSubsequence.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 392. Is Subsequence (Two Pointers, String)

/// Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
///
/// A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).
///
///
///
/// **Example 1:**
/// ```
/// Input: s = "abc", t = "ahbgdc"
/// Output: true
/// ```
/// **Example 2:**
/// ```
/// Input: s = "axc", t = "ahbgdc"
/// Output: false
/// ```
///
/// Constraints:
/// ```
/// 0 <= s.length <= 100
/// 0 <= t.length <= 104
/// s and t consist only of lowercase English letters.
/// ```
///
///
/// - Note: Suppose there are lots of incoming s, say s1, s2, ..., sk where k >= 109, and you want to check one by one to see if t has its subsequence. In this scenario, how would you change your code?
final class IsSubsequence_Solution {

    // MARK: - First array solution
    func isSubsequence_v1(_ s: String, _ t: String) -> Bool {
        let sArray = Array(s)
        var index = 0

        for char in t {
            guard index < s.count else { return true }

            if char == sArray[index] { index += 1 }
        }

        return index == s.count
    }

    // MARK: - String solution
    func isSubsequence_v2(_ s: String, _ t: String) -> Bool {
        var sIndex = s.startIndex

        for char in t {
            if sIndex == s.endIndex {
                return true
            }
            if s[sIndex] == char {
                s.formIndex(after: &sIndex)
            }
        }

        return sIndex == s.endIndex
    }

}
