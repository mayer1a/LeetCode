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

    // MARK: - 121. Best Time to Buy and Sell Stock

    func bestTimeToBuyAndSellStock(_ prices: [Int]) -> Int {
        let solution = BestTimeToBuyAndSellStock_Solution()
        return solution.maxProfit(prices)
    }

    // MARK: - 142. Linked List Cycle II

    func linkedListCycleII(_ head: ListNode?) -> ListNode? {
        let solution = LinkedListCycleII_Solution()
        return solution.detectCycle(head)
    }

    // MARK: - 205. Isomorphic Strings

    func isomorphicString(_ s: String, _ t: String, alternativeSolution: Bool = false) -> Bool {
        let solution = IsomorphicStrings_Solution()
        return alternativeSolution ? solution.isIsomorphic_v2(s, t) : solution.isIsomorphic_v1(s, t)
    }

    // MARK: - 278. First Bad Version

    func firstBadVersion(_ n: Int) -> Int {
        let solution = FirstBadVersion_Solution()
        return solution.firstBadVersion(n)
    }

    // MARK: - 409. Longest Palindrome

    func longestPalindrome(_ s: String) -> Int {
        let solution = LongestPalindrome_Solution()
        return solution.longestPalindrome(s)
    }

    // MARK: - 589. N-ary Tree Preorder Traversal

    func treePreorderTraversal(_ root: Node?, iterative: Bool = true) -> [Int] {
        let solution = NAryTreePreorderTraversal_Solution()
        return iterative ? solution.preorder_iteratively(root) : solution.preorder_recursive(root)
    }

    // MARK: - 648. Replace Words

    func replaceWords(_ dictionary: [String], _ sentence: String) -> String {
        let solution = ReplaceWords_Solution()
        return solution.replaceWords(dictionary, sentence)
    }

    // MARK: - 704. Binary Search

    func binarySearch(_ nums: [Int], _ target: Int) -> Int {
        let solution = BinarySearch_Solution()
        return solution.search(nums, target)
    }

    // MARK: - 849. Maximize Distance to Closest Person

    func maximizeDistanceToClosestPerson(_ seats: [Int]) -> Int {
        let solution = MaximizeDistanceToClosestPerson_Solution()
        return solution.maxDistToClosest(seats)
    }

    // MARK: - 876. Middle of the Linked List

    func middleNodeOfTheLinkedList(_ head: ListNode?) -> ListNode? {
        let solution = MiddleOfTheLinkedList_Solution()
        return solution.middleNode(head)
    }

    // MARK: - 949. Largest Time for Given Digits

    func largestTimeForGivenDigits(_ arr: [Int]) -> String {
        let solution = LargestTimeForGivenDigits_Solution()
        return solution.largestTimeFromDigits(arr)
    }

    // MARK: - 1002. Find Common Characters

    func findCommonCharacters(_ words: [String]) -> [String] {
        let solution = FindCommonCharacters_Solution()
        return solution.commonChars(words)
    }

    // MARK: - 1480. Running Sum of 1d Array

    func runningSumOf1dArray(_ nums: [Int]) -> [Int] {
        let solution = RunningSumOf1dArray_Solution()
        return solution.runningSum(nums)
    }

}

