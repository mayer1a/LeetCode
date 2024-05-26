//
//  BinaryTreeLevelOrderTraversal.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 102. Binary Tree Level Order Traversal (Tree, Breadth-First Search)

/// Given the root of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).
///
/// **Example 1:**
/// ```
/// Input: root = [3, 9, 20, nil, nil, 15, 7]
/// Output: [[3], [9, 20], [15, 7]]
/// ```
///
/// **Example 2:**
/// ```
/// Input: root = [1]
/// Output: [[1]]
/// ```
///
/// **Example 3:**
/// ```
/// Input: root = []
/// Output: []
/// ```
///
/// **Constraints:**
/// ```
/// The number of nodes in the tree is in the range [0, 2000].
/// -1000 <= Node.val <= 1000
/// ```
final class BinaryTreeLevelOrderTraversal_Solution {
    
    // Recursively
    func levelOrder_recursively(_ root: TreeNode?) -> [[Int]] {
        guard let root else { return [] }

        let left = levelOrder_recursively(root.left)
        let right = levelOrder_recursively(root.right)
        var result: [[Int]] = [[root.val]]
        let short = left.count > right.count ? 0..<right.count : 0..<left.count
        let long = left.count > right.count ? right.count..<left.count : left.count..<right.count

        for index in short {
            var row = left[index]
            row.append(contentsOf: right[index])
            result.append(row)
        }

        result.append(contentsOf: long.last ?? 0 >= left.count ? right[long] : left[long])

        return result
    }

    // Iteratively
    func levelOrder_iteratively(_ root: TreeNode?) -> [[Int]] {
        if root == nil { return [] }

        var result: [[Int]] = []
        var queue: [TreeNode?] = [root]

        while let _ = queue.first {
            var level: [Int] = []

            for _ in 0..<queue.count {
                guard let current = queue.removeFirst() else { continue }
                level.append(current.val)

                if let left = current.left {
                    queue.append(left)
                }
                if let right = current.right {
                    queue.append(right)
                }
            }
            result.append(level)
        }

        return result
    }

}
