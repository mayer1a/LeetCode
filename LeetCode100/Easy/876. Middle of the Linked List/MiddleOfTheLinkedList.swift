//
//  MiddleOfTheLinkedList.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 876. Middle of the Linked List (Linked List, Two Pointers)

/// Given the head of a singly linked list, return the middle node of the linked list.
///
/// If there are two middle nodes, return the second middle node.
///
///
/// **Example 1:**
/// ```
/// Input: head = [1,2,3,4,5]
/// Output: [3,4,5]
/// Explanation: The middle node of the list is node 3.
/// ```
///
/// **Example 2:**
/// ```
/// Input: head = [1,2,3,4,5,6]
/// Output: [4,5,6]
/// Explanation: Since the list has two middle nodes with values 3 and 4, we return the second one.
/// ```
///
/// **Constraints:**
/// ```
/// The number of nodes in the list is in the range [1, 100].
/// 1 <= Node.val <= 100
/// ```
final class MiddleOfTheLinkedList_Solution {

    func middleNode(_ head: ListNode<Int>?) -> ListNode<Int>? {
        var mid = head
        var next = head

        while let nextNode = next?.next {
            mid = mid?.next
            next = nextNode.next
        }

        return mid
    }

}
