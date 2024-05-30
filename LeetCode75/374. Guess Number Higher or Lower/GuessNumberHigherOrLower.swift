//
//  GuessNumberHigherOrLower.swift
//  LeetCode
//
//  Created by Artem Mayer on 30.05.2024.
//

import Foundation

// MARK: - 374. Guess Number Higher or Lower

/// We are playing the Guess Game. The game is as follows:
///
/// I pick a number from 1 to n. You have to guess which number I picked.
///
/// Every time you guess wrong, I will tell you whether the number I picked is higher or lower than your guess.
///
/// You call a pre-defined API int guess(int num), which returns three possible results:
///
/// - -1: Your guess is higher than the number I picked (i.e. num > pick).
/// - 1: Your guess is lower than the number I picked (i.e. num < pick).
/// - 0: your guess is equal to the number I picked (i.e. num == pick).
///
/// Return the number that I picked.
///
///
/// **Example 1:**
/// ```
/// Input: n = 10, pick = 6
/// Output: 6
/// ```
///
/// **Example 2:**
/// ```
/// Input: n = 1, pick = 1
/// Output: 1
/// ```
///
/// **Example 3:**
/// ```
/// Input: n = 2, pick = 1
/// Output: 1
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= n <= 2³¹ - 1
/// 1 <= pick <= n
/// ```
final class GuessNumberHigherOrLower_Solution: GuessGame {

    func guessNumber(_ n: Int, _ version: Version) -> Int {
        switch version {
        case .v1Linear: return guessNumber_v1(n)
        case .v2Linear: return guessNumber_v2(n)
        case .v3Recursive: return guessNumber_v3(n)
        }
    }

    /// First linear solution
    private func guessNumber_v1(_ n: Int) -> Int {
        var range = (1, n)
        var answer = guess((range.1 + range.0) / 2)

        while answer != 0 {
            if answer == -1 {
                range.1 = ((range.1 + range.0) / 2) - 1
            } else {
                range.0 = ((range.1 + range.0) / 2) + 1
            }
            answer = guess((range.1 + range.0) / 2)
        }

        return (range.1 + range.0) / 2
    }

    /// Second linear solution
    private func guessNumber_v2(_ n: Int) -> Int {
        var start = 1, n = n

        while start < n {
            let mid = (start + n) / 2
            switch guess(mid) {
            case -1: n = mid - 1
            case 1: start = mid + 1
            default: return mid
            }
        }

        return n
    }

    /// Third recursive solution
    private func guessNumber_v3(_ n: Int) -> Int {
        rGuess(1, n)
    }

    private func rGuess(_ l: Int, _ r: Int) -> Int {
        let mid = (l + r) / 2
        switch guess(mid) {
        case -1: return rGuess(l, mid - 1)
        case 1: return rGuess(mid + 1, r)
        default: return mid
        }
    }

}

extension GuessNumberHigherOrLower_Solution {

    enum Version {
        case v1Linear, v2Linear, v3Recursive
    }

}

/**
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return               -1 if num is higher than the picked number
 *              1 if num is lower than the picked number
 *              otherwise return 0
 *
 * `func guess(_ num: Int) -> Int`
 */
class GuessGame {

    private var pickedNumber: Int

    init(pickedNumber: Int) {
        self.pickedNumber = pickedNumber
    }

    func guess(_ num: Int) -> Int {
        if num == pickedNumber {
            return 0
        } else {
            return num > pickedNumber ? -1 : 1
        }
    }

}
