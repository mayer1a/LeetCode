//
//  IsomorphicStrings.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 205. Isomorphic Strings (Hash table, String)

/// Given two strings s and t, determine if they are isomorphic.
///
/// Two strings s and t are isomorphic if the characters in s can be replaced to get t.
///
/// All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.
///
///
/// **Example 1:**
/// ```
/// Input: s = "egg", t = "add"
/// Output: true
/// ```
///
/// **Example 2:**
/// ```
/// Input: s = "foo", t = "bar"
/// Output: false
/// ```
///
/// **Example 3:**
/// ```
/// Input: s = "paper", t = "title"
/// Output: true
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= s.length <= 5 * 10⁴
/// t.length == s.length
/// s and t consist of any valid ascii character.
/// ```
final class IsomorphicStrings_Solution {

    // Alternative
    func isIsomorphic_v2(_ s: String, _ t: String) -> Bool {
        var sdc = [Character:String.Index](), tdc = sdc
        for i in s.indices {
            guard sdc[s[i]] == tdc[t[i]] else { return false }
            sdc[s[i]] = i
            tdc[t[i]] = i
        }
        return true
    }

    func isIsomorphic_v1(_ s: String, _ t: String) -> Bool {
        var sDict: [Character: Character] = [:]
        var tDict: [Character: Character] = [:]
        var sIter = s.makeIterator()
        var tIter = t.makeIterator()

        while let sElement = sIter.next(), let tElement = tIter.next() {
            if sDict[sElement] == nil, tDict[tElement] == nil {
                sDict[sElement] = tElement
                tDict[tElement] = sElement
            } else if sDict[sElement] != tElement, tDict[tElement] != sElement {
                return false
            }
        }

        return true
    }

}
