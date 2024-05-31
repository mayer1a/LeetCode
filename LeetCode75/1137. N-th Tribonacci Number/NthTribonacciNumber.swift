//
//  NthTribonacciNumber.swift
//  LeetCode
//
//  Created by Artem Mayer on 31.05.2024.
//

import Foundation

// MARK: - 1137. N-th Tribonacci Number

/// The Tribonacci sequence Tₙ is defined as follows:
///
/// T₀ = 0, T₁ = 1, T₂ = 1, and Tₙ₊₃ = Tₙ + Tₙ₊₁ + Tₙ₊₂ for n >= 0.
///
/// Given n, return the value of Tₙ.
///
///
/// **Example 1:**
/// ```
/// Input: n = 4
/// Output: 4
/// Explanation:
/// T₃ = 0 + 1 + 1 = 2
/// T₄ = 1 + 1 + 2 = 4
/// ```
///
/// **Example 2:**
/// ```
/// Input: n = 25
/// Output: 1389537
/// ```
///
/// **Constraints:**
/// ```
/// 0 <= n <= 37
/// The answer is guaranteed to fit within a 32-bit integer, ie. answer <= 2³¹ - 1.
/// ```
final class NthTribonacciNumber_Solution {

    func tribonacci(_ n: Int, _ n_1: Int = 0, _ n_2: Int = 1, _ n_3: Int = 1) -> Int {
        switch n {
        case 0: return n_1
        case 1: return n_2
        case 2: return n_3
        default: return tribonacci(n - 1, n_2, n_3, n_1 + n_2 + n_3)
        }
    }

}
