//
//  CanPlaceFlowers.swift
//  LeetCode
//
//  Created by Artem Mayer on 22.05.2024.
//

import Foundation

// MARK: - 605. Can Place Flowers

/// You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.
///
/// Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.
///
///
/// **Example 1:**
/// ```
/// Input: flowerbed = [1,0,0,0,1], n = 1
/// Output: true
/// ```
///
/// **Example 2:**
/// ```
/// Input: flowerbed = [1,0,0,0,1], n = 2
/// Output: false
/// ```
///
/// **Constraints:**
/// ```
/// 1 <= flowerbed.length <= 2 * 10⁴
/// flowerbed[i] is 0 or 1.
/// There are no two adjacent flowers in flowerbed.
/// 0 <= n <= flowerbed.length
/// ```
final class CanPlaceFlowers_Solution {

    /// Brute force solution
    func canPlaceFlowers_v1(_ flowerbed: [Int], _ n: Int) -> Bool {
        if flowerbed.count == 1 {
            return flowerbed[0] == 0 || n == 0
        }
        var zerosCount = 0
        var placementFlowers = 0

        for i in 0..<flowerbed.count {
            if flowerbed[i] == 0 {
                zerosCount += ((i == 0 || i == flowerbed.count - 1) ? 2 : 1)
            } else {
                zerosCount = 0
            }
            if zerosCount >= 3 {
                placementFlowers += 1
                zerosCount -= 2
            }
        }

        return placementFlowers >= n
    }

    /// Optimized solution
    func canPlaceFlowers_v2(_ flowerbed: [Int], _ n: Int) -> Bool {
        var count = 0
        var flowerbed = flowerbed

        for i in 0..<flowerbed.count {
            if flowerbed[i] == 0 {
                let lEmpty = i == 0 || flowerbed[i - 1] == 0
                let rEmpty = i == flowerbed.count - 1 || flowerbed[i + 1] == 0
                
                if lEmpty, rEmpty {
                    count += 1
                    flowerbed[i] = 1
                    if count >= n {
                        return true
                    }
                }
            }
        }

        return count >= n
    }

}
