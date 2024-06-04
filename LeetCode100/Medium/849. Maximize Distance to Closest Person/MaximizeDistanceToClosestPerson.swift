//
//  MaximizeDistanceToClosestPerson.swift
//  LeetCode
//
//  Created by Artem Mayer on 04.06.2024.
//

import Foundation

// MARK: - 849. Maximize Distance to Closest Person

/// You are given an array representing a row of seats where seats[i] = 1 represents a person sitting in the ith seat, and seats[i] = 0 represents that the ith seat is empty (0-indexed).
///
/// There is at least one empty seat, and at least one person sitting.
///
/// Alex wants to sit in the seat such that the distance between him and the closest person to him is maximized.
///
/// Return that maximum distance to the closest person.
///
///
/// **Example 1:**
/// ```
/// Input: seats = [1,0,0,0,1,0,1]
/// Output: 2
/// Explanation:
/// If Alex sits in the second open seat (i.e. seats[2]), then the closest person has distance 2.
/// If Alex sits in any other open seat, the closest person has distance 1.
/// Thus, the maximum distance to the closest person is 2.
/// ```
///
/// **Example 2:**
/// ```
/// Input: seats = [1,0,0,0]
/// Output: 3
/// Explanation:
/// If Alex sits in the last seat (i.e. seats[3]), the closest person is 3 seats away.
/// This is the maximum distance possible, so the answer is 3.
/// ```
///
/// **Example 3:**
/// ```
/// Input: seats = [0,1]
/// Output: 1
/// ```
///
/// **Constraints:**
/// ```
/// 2 <= seats.length <= 2 * 10⁴
/// seats[i] is 0 or 1.
/// At least one seat is empty.
/// At least one seat is occupied.
/// ```
final class MaximizeDistanceToClosestPerson_Solution {

    func maxDistToClosest(_ seats: [Int]) -> Int {
        var currentMax = 0
        var ans = 0
        var firstOneIndex = -1
        var lastOneIndex = -1

        for i in 0..<seats.count {
            if seats[i] == 1 {
                currentMax = 0
                if firstOneIndex == -1 { firstOneIndex = i }
                lastOneIndex = i
            } else {
                currentMax += 1
                ans = max(ans, (currentMax + 1) / 2)
            }
        }

        return max(max(ans, seats.count - lastOneIndex - 1), firstOneIndex)
    }

}
