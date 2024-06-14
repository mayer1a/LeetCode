//
//  SearchInBinarySearchTree.swift
//  LeetCode
//
//  Created by Artem Mayer on 30.05.2024.
//

import Foundation

// MARK: - 700. Search in a Binary Search Tree

/// You are given the root of a binary search tree (BST) and an integer val.
///
/// Find the node in the BST that the node's value equals val and return the subtree rooted with that node. If such a node does not exist, return null.
///
///
/// **Example 1:**
///
/// ![Tree1](https://assets.leetcode.com/uploads/2021/01/12/tree1.jpg)
/// ```
/// Input: root = [4,2,7,1,3], val = 2
/// Output: [2,1,3]
/// ```
///
/// **Example 2:**
///
/// ![Tree1](https://assets.leetcode.com/uploads/2021/01/12/tree2.jpg)
/// ```
/// Input: root = [4,2,7,1,3], val = 5
/// Output: []
/// ```
///
/// **Constraints:**
/// ```
/// The number of nodes in the tree is in the range [1, 5000].
/// 1 <= Node.val <= 10⁷
/// root is a binary search tree.
/// 1 <= val <= 10⁷
/// ```
final class SearchInBinarySearchTree_Solution {

    /// Fisrt recurcive solution
    func searchBST_v1(_ root: TreeNode<Int>?, _ val: Int) -> TreeNode<Int>? {
        guard let root else { return nil }

        if val == root.val {
            return root
        } else {
            return searchBST_v1(val > root.val ? root.right : root.left , val)
        }
    }

    /// Second linear solution
    func searchBST_v2(_ root: TreeNode<Int>?, _ val: Int) -> TreeNode<Int>? {
        var root = root

        while root != nil {
            if val == root?.val {
                return root
            } else {
                root = val > root!.val ? root!.right : root!.left
            }
        }

        return nil
    }

}
