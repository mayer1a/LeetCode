//
//  MaximumDepthOfBinaryTree.swift
//  LeetCode
//
//  Created by Artem Mayer on 29.05.2024.
//

import Foundation

// MARK: - 104. Maximum Depth of Binary Tree

/// Given the root of a binary tree, return its maximum depth.
///
/// A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
///
///
/// **Example 1:**
///
/// ![Img1](https://clck.ru/3B7WJ8)
/// ```
/// Input: root = [3,9,20,null,null,15,7]
/// Output: 3
/// ```
///
/// **Example 2:**
///
/// ![Img2](https://clck.ru/3B7WU5)
/// ```
/// Input: root = [1,null,2]
/// Output: 2
/// ```
///
/// **Constraints:**
/// ```
/// The number of nodes in the tree is in the range [0, 10⁴].
/// -100 <= Node.val <= 100
/// ```
final class MaximumDepthOfBinaryTree_Solution {

    func maxDepth(_ root: TreeNode?) -> Int {
        root == nil ? 0 : max(maxDepth(root?.left), maxDepth(root?.right)) + 1
    }

}

