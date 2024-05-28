//
//  main.swift
//  LeetCode75
//
//  Created by Artem Mayer on 23.05.2024.
//

import Foundation

final class Solution {

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

    // MARK: - 724. Find Pivot Index

    func findPivotIndex(_ nums: [Int]) -> Int {
        let solution = FindPivotIndex_Solution()
        return solution.pivotIndex(nums)
    }

}

