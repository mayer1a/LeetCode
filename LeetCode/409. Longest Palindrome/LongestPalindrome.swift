//
//  LongestPalindrome.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 409. Longest Palindrome (Hash Table, String, Greedy)

/// Given a string s which consists of lowercase or uppercase letters, return the length of the longest palindrome that can be built with those letters.
/// Letters are case sensitive, for example, "Aa" is not considered a palindrome here.
///
/// **Example 1:**
/// ```
/// Input: s = "abccccdd"
/// Output: 7
/// Explanation: One longest palindrome that can be built is "dccaccd", whose length is 7.
/// ```
///
/// **Example 2:**
/// ```
/// Input: s = "a"
/// Output: 1
/// Explanation: The longest palindrome that can be built is "a", whose length is 1.
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= s.length <= 2000
/// s consists of lowercase and/or uppercase English letters only.
/// ```
final class LongestPalindrome_Solution {

    func longestPalindrome(_ s: String) -> Int {
        let dict = s.reduce(into: [:], { $0[$1, default: 0] += 1 })
        let number = dict.reduce(into: 0) { partialResult, element in
            partialResult += element.value / 2 * 2
            if partialResult % 2 == 0, element.value % 2 == 1 { partialResult += 1 }
        }

        return number
    }

}
