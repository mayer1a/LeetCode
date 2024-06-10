//
//  MaximumNumberOfVowelsInSubstringOfGivenLength.swift
//  LeetCode
//
//  Created by Artem Mayer on 08.06.2024.
//

import Foundation

// MARK: - 1456. Maximum Number of Vowels in a Substring of Given Length

/// Given a string s and an integer k, return the maximum number of vowel letters in any substring of s with length k.
///
/// Vowel letters in English are 'a', 'e', 'i', 'o', and 'u'.
///
///
/// **Example 1:**
/// ```
/// Input: s = "abciiidef", k = 3
/// Output: 3
/// Explanation: The substring "iii" contains 3 vowel letters.
/// ```
///
/// **Example 2:**
/// ```
/// Input: s = "aeiou", k = 2
/// Output: 2
/// Explanation: Any substring of length 2 contains 2 vowels.
/// ```
///
/// **Example 3:**
/// ```
/// Input: s = "leetcode", k = 3
/// Output: 2
/// Explanation: "lee", "eet" and "ode" contain 2 vowels.
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= s.length <= 10⁵
/// s consists of lowercase English letters.
/// 1 <= k <= s.length
/// ```
final class MaximumNumberOfVowelsInSubstringOfGivenLength_Soluton {

    func maxVowels(_ s: String, _ k: Int) -> Int {
        var res = s[s.startIndex..<s.index(s.startIndex, offsetBy: k)].utf8.reduce(0, { $0 + $1.vowelCount })

        s.utf8.withContiguousStorageIfAvailable {
            var cur = res

            for i in k..<$0.count {
                cur -= $0[i - k].vowelCount
                cur += $0[i].vowelCount
                res = max(res, cur)
            }
        }

        return res
    }

}

extension String.UTF8View.Element {

    /// 'a', 'e', 'i', 'o', and 'u''
    var vowelCount: Int {
        switch self {
        case 97, 101, 105, 111, 117: return 1
        default: return 0
        }
    }

}
