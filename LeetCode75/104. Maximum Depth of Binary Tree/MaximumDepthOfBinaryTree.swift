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
/// ```
/// Input: root = [3,9,20,null,null,15,7]
/// Output: 3
/// ```
///
/// **Example 2:**
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
let case1 = TreeNode(3, .init(9), .init(20, .init(15), .init(7)))
let case2 = TreeNode(1, nil, .init(2))
let case3: TreeNode? = nil
let case4 = {
    TreeNode(1,
             .init(2,
                .init(4,
                      .init(8),
                      .init(9,
                            .init(10,
                                  .init(19),
                                  nil),
                            .init(12))),
                .init(5,
                      .init(20,
                            .init(24,
                                  .init(30),
                                  nil),
                            nil),
                      nil)),
             .init(3,
                   .init(6,
                         nil,
                         .init(31,
                               .init(29,
                                     .init(40,
                                           .init(41),
                                           nil),
                                     nil),
                               nil)),
                   .init(7,
                         nil,
                         .init(32,
                               .init(33),
                               nil))))
}()
