//
//  main.swift
//  LeetCode75
//
//  Created by Artem Mayer on 23.05.2024.
//

import Foundation

final class Solution {

    // MARK: - 11. Container With Most Water

    func containerWithMostWater(_ height: [Int]) -> Int {
        let solution = ContainerWithMostWater_Solution()
        return solution.maxArea(height)
    }

    // MARK: - 104. Maximum Depth of Binary Tree
    
    func maximumDepthOfBinaryTree(_ root: TreeNode<Int>?) -> Int {
        let solution = MaximumDepthOfBinaryTree_Solution()
        return solution.maxDepth(root)
    }

    // MARK: - 136. Single Number
    
    func singleNumber(_ nums: [Int]) -> Int {
        let solution = SingleNumber_Solution()
        return solution.singleNumber(nums)
    }

    // MARK: - 151. Reverse Words in a String
    
    func reverseWordsInString(_ s: String) -> String {
        let solution = ReverseWordsInString_Solution()
        return solution.reverseWords(s)
    }

    // MARK: - 206. Reverse Linked List

    func reverseLinkedList(_ head: ListNode<Int>?, iterative: Bool = true) -> ListNode<Int>? {
        let solution = ReverseLinkedList_Solution()
        return iterative ? solution.reverseList_iterative(head) : solution.reverseList_recursive(head)
    }

    // MARK: - 238. Product of Array Except Self
    
    func productOfArrayExceptSelf(_ nums: [Int]) -> [Int] {
        let solution = ProductOfArrayExceptSelf_Solution()
        return solution.productExceptSelf(nums)
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

    // MARK: - 328. Odd Even Linked List

    func oddEvenLinkedList(_ head: ListNode<Int>?) -> ListNode<Int>? {
        let solution = OddEvenLinkedList_Solution()
        return solution.oddEvenList(head)
    }

    // MARK: - 334. Increasing Triplet Subsequence
    
    func increasingTripletSubsequence(_ nums: [Int]) -> Bool {
        let solution = IncreasingTripletSubsequence_Solution()
        return solution.increasingTriplet(nums)
    }

    // MARK: - 338. Counting Bits

    func countingBits(_ n: Int) -> [Int] {
        let solution = CountingBits_Solution()
        return solution.countBits(n)
    }

    // MARK: - 345. Reverse Vowels of a String

    func reverseVowelsOfString(_ s: String) -> String {
        let solution = ReverseVowelsOfString_Solution()
        return solution.reverseVowels(s)
    }

    // MARK: - 374. Guess Number Higher or Lower

    func guessNumberHigherOrLower(_ n: Int, pickedNum: Int,
                                  version: GuessNumberHigherOrLower_Solution.Version) -> Int {

        let solution = GuessNumberHigherOrLower_Solution(pickedNumber: pickedNum)
        return solution.guessNumber(n, version)
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

    // MARK: - 394. Decode String

    func decodeString(_ s: String) -> String {
        let solution = DecodeString_Solution()
        return solution.decodeString(s)
    }

    // MARK: - 437. Path Sum III

    func pathSumIII(_ root: TreeNode<Int>?, _ targetSum: Int) -> Int {
        let solution = PathSumIII_Solution()
        return solution.pathSum(root, targetSum)
    }

    // MARK: - 443. String Compression

    func stringCompression(_ chars: inout [Character]) -> Int {
        let solution = StringCompression_Solution()
        return solution.compress(&chars)
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

    func searchInBinarySearchTree(_ root: TreeNode<Int>?, _ val: Int, alt: Bool = false) -> TreeNode<Int>? {
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

    // MARK: - 735. Asteroid Collision

    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        let solution = AsteroidCollision_Solution()
        return solution.asteroidCollision(asteroids)
    }

    // MARK: - 746. Min Cost Climbing Stairs

    func minCostClimbingStairs(_ costs: [Int]) -> Int {
        let solution = MinCostClimbingStairs_Solution()
        return solution.minCostClimbingStairs(costs)
    }

    // MARK: - 872. Leaf-Similar Trees

    func leafSimilarTrees(_ root1: TreeNode<Int>?, _ root2: TreeNode<Int>?) -> Bool {
        let solution = LeafSimilarTrees_Solution()
        return solution.leafSimilar(root1, root2)
    }

    // MARK: - 933. Number of Recent Calls

    func numberOfRecentCalls(_ t: Int) -> Int {
        NumberOfRecentCalls_Solution.shared.ping(t)
    }

    // MARK: - 1004. Max Consecutive Ones III

    func maxConsecutiveOnesIII(_ nums: [Int], _ k: Int) -> Int {
        let solution = MaxConsecutiveOnesIII_Solution()
        return solution.longestOnes(nums, k)
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

    // MARK: - 1137. N-th Tribonacci Number

    func nthTribonacciNumber(_ n: Int) -> Int {
        let solution = NthTribonacciNumber_Solution()
        return solution.tribonacci(n)
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

    // MARK: - 1448. Count Good Nodes in Binary Tree

    func countGoodNodesInBinaryTree(_ root: TreeNode<Int>?) -> Int {
        let solution = CountGoodNodesInBinaryTree_Solution()
        return solution.goodNodes(root)
    }

    // MARK: - 1456. Maximum Number of Vowels in a Substring of Given Length

    func maximumNumberOfVowelsInSubstringOfGivenLength(_ s: String, _ k: Int) -> Int {
        let solution = MaximumNumberOfVowelsInSubstringOfGivenLength_Soluton()
        return solution.maxVowels(s, k)
    }

    // MARK: - 1493. Longest Subarray of 1's After Deleting One Element

    func longestSubarrayOf1sAfterDeletingOneElement(_ nums: [Int]) -> Int {
        let solution = LongestSubarrayOf1sAfterDeletingOneElement_Solution()
        return solution.longestSubarray(nums)
    }

    // MARK: - 1657. Determine if Two Strings Are Close

    func determineIfTwoStringsAreClose(_ word1: String, _ word2: String) -> Bool {
        let solution = DetermineIfTwoStringsAreClose_Solution()
        return solution.closeStrings(word1, word2)
    }

    // MARK: - 1679. Max Number of K-Sum Pairs

    func maxNumberOfKSumPairs(_ nums: [Int], _ k: Int) -> Int {
        let solution = MaxNumberOfKSumPairs_Solution()
        return solution.maxOperations(nums, k)
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

    // MARK: - 2095. Delete the Middle Node of a Linked List

    func deleteMiddleNodeOfLinkedList(_ head: ListNode<Int>?) -> ListNode<Int>? {
        let solution = DeleteMiddleNodeOfLinkedList_Solution()
        return solution.deleteMiddle(head)
    }

    // MARK: - 2130. Maximum Twin Sum of a Linked List

    func maximumTwinSumOfLinkedList(_ head: ListNode<Int>?) -> Int {
        let solution = MaximumTwinSumOfLinkedList_Solution()
        return solution.pairSum(head)
    }

    // MARK: - 2215. Find the Difference of Two Arrays

    func findTheDifferenceOfTwoArrays(_ nums1: [Int], _ nums2: [Int],
                                      version: FindTheDifferenceOfTwoArrays_Solution.Version) -> [[Int]] {
        
        let solution = FindTheDifferenceOfTwoArrays_Solution()
        return solution.findDifference(nums1, nums2, version: version)
    }

    // MARK: - 2352. Equal Row and Column Pairs

    func equalRowAndColumnPairs(_ grid: [[Int]]) -> Int {
        let solution = EqualRowAndColumnPairs_Solution()
        return solution.equalPairs(grid)
    }

    // MARK: - 2390. Removing Stars From a String

    func removingStarsFromString(_ s: String) -> String {
        let solution = RemovingStarsFromString_Solution()
        return solution.removeStars(s)
    }

}

