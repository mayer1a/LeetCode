//
//  PathSumIII.swift
//  LeetCode
//
//  Created by Artem Mayer on 17.06.2024.
//

import Foundation

// MARK: - 437. Path Sum III

/// Given the root of a binary tree and an integer targetSum, return the number of paths where the sum of the values along the path equals targetSum.
///
/// The path does not need to start or end at the root or a leaf, but it must go downwards (i.e., traveling only from parent nodes to child nodes).
///
///
/// **Example 1:**
///
/// ![Imag1](https://assets.leetcode.com/uploads/2021/04/09/pathsum3-1-tree.jpg)
/// ```
/// Input: root = [10,5,-3,3,2,null,11,3,-2,null,1], targetSum = 8
/// Output: 3
/// Explanation: The paths that sum to 8 are shown.
/// ```
///
/// **Example 2:**
/// ```
/// Input: root = [5,4,8,11,null,13,4,7,2,null,null,5,1], targetSum = 22
/// Output: 3
/// ```
///
/// **Constraints:**
/// ```
/// The number of nodes in the tree is in the range [0, 1000].
/// -10⁹ <= Node.val <= 10⁹
/// -1000 <= targetSum <= 1000
/// ```
final class PathSumIII_Solution {

    private var dict: [Int: Int] = [0: 1]

    func pathSum(_ root: TreeNode<Int>?, _ targetSum: Int, _ currentSum: Int = 0) -> Int {
        guard let root else { return 0 }

        let currentSum = currentSum + root.val
        var count = dict[currentSum - targetSum] ?? 0

        dict[currentSum] = (dict[currentSum] ?? 0) + 1
        count += pathSum(root.left, targetSum, currentSum)
        count += pathSum(root.right, targetSum, currentSum)
        dict[currentSum] = (dict[currentSum] ?? 1) - 1

        return count
    }

}
