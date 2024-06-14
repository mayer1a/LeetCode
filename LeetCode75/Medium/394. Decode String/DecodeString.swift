//
//  DecodeString.swift
//  LeetCode
//
//  Created by Artem Mayer on 14.06.2024.
//

import Foundation

// MARK: - 394. Decode String

/// Given an encoded string, return its decoded string.
///
/// The encoding rule is: k[encoded_string], where the encoded_string inside the square brackets is being repeated exactly k times. Note that k is guaranteed to be a positive integer.
///
/// You may assume that the input string is always valid; there are no extra white spaces, square brackets are well-formed, etc. Furthermore, you may assume that the original data does not contain any digits and that digits are only for those repeat numbers, k. For example, there will not be input like 3a or 2[4].
///
/// The test cases are generated so that the length of the output will never exceed 10⁵.
///
///
/// **Example 1:**
/// ```
/// Input: s = "3[a]2[bc]"
/// Output: "aaabcbc"
/// ```
///
/// **Example 2:**
/// ```
/// Input: s = "3[a2[c]]"
/// Output: "accaccacc"
/// ```
///
/// **Example 3:**
/// ```
/// Input: s = "2[abc]3[cd]ef"
/// Output: "abcabccdcdcdef"
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= s.length <= 30
/// s consists of lowercase English letters, digits, and square brackets '[]'.
/// s is guaranteed to be a valid input.
/// All the integers in s are in the range [1, 300].
/// ```
final class DecodeString_Solution {

    func decodeString(_ s: String) -> String {
        var brackets = 0
        var rep = 0
        var last = s.startIndex
        var res = ""

        for i in s.indices {
            if s[i].utf8.first! < 58 { continue }

            if brackets == 0, "a" <= s[i], s[i] <= "z" {
                res.append(s[i])
                last = s.index(after: i)
            } else if s[i] == "[" {
                brackets += 1
                if brackets == 1 {
                    s[last..<i].forEach { rep = rep * 10 + ($0.wholeNumberValue ?? 0) }
                    last = s.index(after: i)
                }
            } else if s[i] == "]" {
                brackets -= 1
                if brackets == 0 {
                    while rep > 0 {
                        rep -= 1
                        res.append(decodeString(String(s[last..<i])))
                    }
                    last = s.index(after: i)
                }
            }
        }
        return res
    }

}
