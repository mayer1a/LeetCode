//
//  FindCommonCharacters.swift
//  LeetCode
//
//  Created by Artem Mayer on 05.06.2024.
//

import Foundation

// MARK: - 1002. Find Common Characters

/// Given a string array words, return an array of all characters that show up in all strings within the words (including duplicates). You may return the answer in any order.
///
///
/// **Example 1:**
/// ```
/// Input: words = ["bella","label","roller"]
/// Output: ["e","l","l"]
/// ```
/// **Example 2:**
/// ```
/// Input: words = ["cool","lock","cook"]
/// Output: ["c","o"]
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= words.length <= 100
/// 1 <= words[i].length <= 100
/// words[i] consists of lowercase English letters.
/// ```
final class FindCommonCharacters_Solution {

    func commonChars(_ words: [String]) -> [String] {
        var result = makeDict(from: words[0])

        guard words.count > 1 else { return makeAnswer(from: result) }

        for i in 1..<words.count {
            let cur = makeDict(from: words[i])
            result.forEach {
                if cur[$0.key] ?? 0 < $0.value { result[$0.key] = cur[$0.key] }
            }
        }

        return makeAnswer(from: result)
    }
    
    private func makeAnswer(from dict: [String: Int]) -> [String] {
        dict.reduce(into: [String]()) { partialResult, el in
            partialResult.append(contentsOf: Array(repeating: el.key, count: el.value))
        }
    }

    private func makeDict(from str: String) -> [String: Int] {
        str.reduce(into: [String: Int]()) { partialResult, c in
            partialResult["\(c)"] = partialResult["\(c)"] != nil ? partialResult["\(c)"]! + 1 : 1
        }
    }

}
