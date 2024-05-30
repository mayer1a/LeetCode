//
//  main.swift
//  LeetCode75
//
//  Created by Artem Mayer on 23.05.2024.
//

import Foundation

final class Solution {

    // MARK: - 104. Maximum Depth of Binary Tree
    
    func maximumDepthOfBinaryTree(_ root: TreeNode?) -> Int {
        let solution = MaximumDepthOfBinaryTree_Solution()
        return solution.maxDepth(root)
    }

    // MARK: - 206. Reverse Linked List

    func reverseLinkedList(_ head: ListNode?, iterative: Bool = true) -> ListNode? {
        let solution = ReverseLinkedList_Solution()
        return iterative ? solution.reverseList_iterative(head) : solution.reverseList_recursive(head)
    }

    // MARK: - 283. Move Zeroes

    func moveZeroes(_ nums: inout [Int], alt: Bool = false) {
        let solution = MoveZeroes_Solution()
        if alt {
            return solution.moveZeroes_v2(&nums)
        } else {
            return solution.moveZeroes_v1(&nums)
        }
    }

    // MARK: - 345. Reverse Vowels of a String

    func reverseVowelsOfString(_ s: String) -> String {
        let solution = ReverseVowelsOfString_Solution()
        return solution.reverseVowels(s)
    }

    // MARK: - 392. Is Subsequence

    func isSubsequence(_ s: String, _ t: String, alt: Bool = false) -> Bool {
        let solution = IsSubsequence_Solution()
        if alt {
            return solution.isSubsequence_v2(s, t)
        } else {
            return solution.isSubsequence_v1(s, t)
        }
    }

    // MARK: - 605. Can Place Flowers

    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int, alt: Bool = false) -> Bool {
        let solution = CanPlaceFlowers_Solution()
        if alt {
            return solution.canPlaceFlowers_v2(flowerbed, n)
        } else {
            return solution.canPlaceFlowers_v1(flowerbed, n)
        }
    }

    // MARK: - 643. Maximum Average Subarray I

    func maximumAverageSubarrayI(_ nums: [Int], _ k: Int) -> Double {
        let solution = MaximumAverageSubarrayI_Solution()
        return solution.findMaxAverage(nums, k)
    }

    // MARK: - 700. Search in a Binary Search Tree

    func searchInBinarySearchTree(_ root: TreeNode?, _ val: Int, alt: Bool = false) -> TreeNode? {
        let solution = SearchInBinarySearchTree_Solution()
        if alt {
            return solution.searchBST_v2(root, val)
        } else {
            return solution.searchBST_v1(root, val)
        }
    }

    // MARK: - 724. Find Pivot Index

    func findPivotIndex(_ nums: [Int]) -> Int {
        let solution = FindPivotIndex_Solution()
        return solution.pivotIndex(nums)
    }

    // MARK: - 872. Leaf-Similar Trees

    func leafSimilarTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        let solution = LeafSimilarTrees_Solution()
        return solution.leafSimilar(root1, root2)
    }

    // MARK: - 933. Number of Recent Calls
    func numberOfRecentCalls(_ t: Int) -> Int {
        NumberOfRecentCalls_Solution.shared.ping(t)
    }

    // MARK: - 1071. Greatest Common Divisor of Strings

    func greatestCommonDivisorOfStrings(_ str1: String, _ str2: String, alt: Bool = false) -> String {
        let solution = GreatestCommonDivisorOfStrings_Solution()
        if alt {
            return solution.gcdOfStrings_v1(str1, str2)
        } else {
            return solution.gcdOfStrings_v2(str1, str2)
        }
    }

    // MARK: - 1207. Unique Number of Occurrences

    func uniqueNumberOfOccurrences(_ arr: [Int], alt: Bool = false) -> Bool {
        let solution = UniqueNumberOfOccurrences_Solution()
        if alt {
            return solution.uniqueOccurrences_v2(arr)
        } else {
            return solution.uniqueOccurrences_v1(arr)
        }
    }

    // MARK: - 1431. Kids With the Greatest Number of Candies

    func kidsWithTheGreatestNumberOfCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let solution = KidsWithTheGreatestNumberOfCandies_Solution()
        return solution.kidsWithCandies(candies, extraCandies)
    }

    // MARK: - 1732. Find the Highest Altitude

    func findTheHighestAltitude(_ gain: [Int]) -> Int {
        let solution = FindTheHighestAltitude_Solution()
        return solution.largestAltitude(gain)
    }

    // MARK: - 1768. Merge Strings Alternately

    func mergeStringsAlternately(_ word1: String, _ word2: String) -> String {
        let solution = MergeStringsAlternately_Solution()
        return solution.mergeAlternately(word1, word2)
    }

    // MARK: - 2215. Find the Difference of Two Arrays

    func findTheDifferenceOfTwoArrays(_ nums1: [Int], _ nums2: [Int],
                                      version: FindTheDifferenceOfTwoArrays_Solution.Version) -> [[Int]] {
        
        let solution = FindTheDifferenceOfTwoArrays_Solution()
        return solution.findDifference(nums1, nums2, version: version)
    }

}

