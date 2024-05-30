//
//  ReverseVowelsOfString.swift
//  LeetCode
//
//  Created by Artem Mayer on 22.05.2024.
//

import Foundation

// MARK: - 345. Reverse Vowels of a String

/// Given a string s, reverse only all the vowels in the string and return it.
///
/// The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.
///
///
/// **Example 1:**
/// ```
/// Input: s = "hello"
/// Output: "holle"
/// ```
///
/// **Example 2:**
/// ```
/// Input: s = "leetcode"
/// Output: "leotcede"
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= s.length <= 3 * 10⁵
/// s consist of printable ASCII characters.
/// ```
final class ReverseVowelsOfString_Solution {

    func reverseVowels(_ s: String) -> String {
        var s = Array(s)
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var head = 0
        var tail = s.count - 1

        while head < tail {
            let lIsReplacable = vowels.contains(s[head])
            let rIsReplacable = vowels.contains(s[tail])

            if lIsReplacable, rIsReplacable {
                s.swapAt(head, tail)
                head += 1
                tail -= 1
            }

            if !lIsReplacable {
                head += 1
            }
            if !rIsReplacable {
                tail -= 1
            }
        }

        return String(s)
    }

}
