//
//  GreatestCommonDivisorOfStrings.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 1071. Greatest Common Divisor of Strings

/// For two strings `s` and t, we say "t divides s" if and only if s = t + t + t + ... + t + t (i.e., t is concatenated with itself one or more times).
///
/// Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.
///
///
/// **Example 1**:
/// ```
/// Input: str1 = "ABCABC", str2 = "ABC"
/// Output: "ABC"
/// ```
///
/// **Example 2**:
/// ```
/// Input: str1 = "ABABAB", str2 = "ABAB"
/// Output: "AB"
/// ```
///
/// **Example 3**:
/// ```
/// Input: str1 = "LEET", str2 = "CODE"
/// Output: ""
/// ```
///
/// **Constraints**:
/// ```
/// 1 <= str1.length, str2.length <= 1000
/// str1 and str2 consist of English uppercase letters.
/// ```
final class GreatestCommonDivisorOfStrings_Solution {

    /// Brute force solution
    func gcdOfStrings_v1(_ str1: String, _ str2: String) -> String {
        let (str1, str2) = (str1.count <= str2.count ? str1 : str2, str1.count <= str2.count ? str2 : str1)

        for i in 1...str1.count {
            let xEndIndex = str1.index(str1.endIndex, offsetBy: -i)
            let x = str1[...xEndIndex]

            if str1.count % x.count == 0, str2.count % x.count == 0,
               str1.replacingOccurrences(of: x, with: "").isEmpty,
               str2.replacingOccurrences(of: x, with: "").isEmpty {
                return "\(x)"
            }
        }
        return ""
    }

    ///Efficient solution
    func gcdOfStrings_v2(_ str1: String, _ str2: String) -> String {
        if "\(str1)\(str2)" != "\(str2)\(str1)" {
            return ""
        }

        return "\(str1[..<str1.index(str1.startIndex, offsetBy: gcd(str1.count, str2.count))])"
    }

    private func gcd(_ a: Int, _ b: Int) -> Int {
        let remainder = a % b
        return remainder != 0 ? gcd(b, remainder) : b
    }

}

// ABABABA
// ABABAB
// ABAB
// AB
