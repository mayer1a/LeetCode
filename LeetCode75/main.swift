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

}

