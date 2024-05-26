//
//  main.swift
//  LeetCode
//
//  Created by Artem Mayer on 26.08.22.
//

import Foundation

final class Solution {

    // MARK: - 21. Merge Two Sorted Lists

    func mergeTwoSortedLists(_ list1: ListNode?,
                             _ list2: ListNode?,
                             alternativeSolution: Bool = false) -> ListNode? {
        
        let solution = MergeTwoSortedLists_Solution()
        return alternativeSolution ?
            solution.mergeTwoLists_v2(list1, list2) :
            solution.mergeTwoLists_v1(list1, list2)
    }

    // MARK: - 102. Binary Tree Level Order Traversal

    func binaryTreeLevelOrderTraversal(_ root: TreeNode?, iterative: Bool = true) -> [[Int]] {
        let solution = BinaryTreeLevelOrderTraversal_Solution()
        return iterative ? solution.levelOrder_iteratively(root) : solution.levelOrder_recursively(root)
    }

}

