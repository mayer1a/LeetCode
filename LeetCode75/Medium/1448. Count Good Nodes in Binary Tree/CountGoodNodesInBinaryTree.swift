//
//  CountGoodNodesInBinaryTree.swift
//  LeetCode
//
//  Created by Artem Mayer on 17.06.2024.
//

import Foundation

// MARK: - 1448. Count Good Nodes in Binary Tree

/// Given a binary tree root, a node X in the tree is named good if in the path from root to X there are no nodes with a value greater than X.
///
/// Return the number of good nodes in the binary tree.
///
///
/// **Example 1:**
///
/// ![Img1](https://assets.leetcode.com/uploads/2020/04/02/test_sample_1.png)
/// ```
/// Input: root = [3,1,4,3,null,1,5]
/// Output: 4
/// Explanation: Nodes in blue are good.
/// Root Node (3) is always a good node.
/// Node 4 -> (3,4) is the maximum value in the path starting from the root.
/// Node 5 -> (3,4,5) is the maximum value in the path
/// Node 3 -> (3,1,3) is the maximum value in the path.
/// ```
///
/// **Example 2:**
///
/// ![Img2](https://assets.leetcode.com/uploads/2020/04/02/test_sample_2.png)
/// ```
/// Input: root = [3,3,null,4,2]
/// Output: 3
/// Explanation: Node 2 -> (3, 3, 2) is not good, because "3" is higher than it.
/// ```
///
/// **Example 3:**
/// ```
/// Input: root = [1]
/// Output: 1
/// Explanation: Root is considered as good.
/// ```
///
/// **Constraints:**
/// ```
/// The number of nodes in the binary tree is in the range [1, 10⁵].
/// Each node's value is between [-10⁴, 10⁴].
/// ```
final class CountGoodNodesInBinaryTree_Solution {

    func goodNodes(_ root: TreeNode<Int>?, _ prev: Int = Int.min) -> Int {
        guard let root else { return 0 }
        let greaterOrEqual = root.val >= prev
        let prev = greaterOrEqual ? root.val : prev
        return goodNodes(root.left, prev) + goodNodes(root.right, prev) + (greaterOrEqual ? 1 : 0)
    }

}
