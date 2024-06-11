//
//  EqualRowAndColumnPairs.swift
//  LeetCode
//
//  Created by Artem Mayer on 11.06.2024.
//

import Foundation

// MARK: - 2352. Equal Row and Column Pairs

/// Given a 0-indexed n x n integer matrix grid, return the number of pairs (ri, cj) such that row ri and column cj are equal.
///
/// A row and column pair is considered equal if they contain the same elements in the same order (i.e., an equal array).
///
///
/// **Example 1:**
///
/// ![Img1](https://assets.leetcode.com/uploads/2022/06/01/ex1.jpg)
/// ```
/// Input: grid = [[3,2,1],[1,7,6],[2,7,7]]
/// Output: 1
/// Explanation: There is 1 equal row and column pair:
/// - (Row 2, Column 1): [2,7,7]
/// ```
///
/// **Example 2:**
///
/// ![Img2](https://assets.leetcode.com/uploads/2022/06/01/ex2.jpg)
/// ```
/// Input: grid = [[3,1,2,2],[1,4,4,5],[2,4,2,2],[2,4,2,2]]
/// Output: 3
/// Explanation: There are 3 equal row and column pairs:
/// - (Row 0, Column 0): [3,1,2,2]
/// - (Row 2, Column 2): [2,4,2,2]
/// - (Row 3, Column 2): [2,4,2,2]
/// ```
///
/// **Constraints:**
/// ```
/// n == grid.length == grid[i].length
/// 1 <= n <= 200
/// 1 <= grid[i][j] <= 10⁵
/// ```
final class EqualRowAndColumnPairs_Solution {

    func equalPairs(_ grid: [[Int]]) -> Int {
        grid.reduce(into: 0) { count, row in
            for j in 0..<grid.count {
                for k in 0..<grid.count {
                    if row[k] != grid[k][j] { break }
                    if k == grid.count - 1 { count += 1 }
                }
            }
        }
    }

}
