//
//  ReverseLinkedList.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 206. Reverse Linked List (Linked List, Recursion)

/// Given the head of a singly linked list, reverse the list, and return the reversed list.
///
///
/// **Example 1:**
/// ```
/// Input: head = [1,2,3,4,5]
/// Output: [5,4,3,2,1]
/// ```
///
/// **Example 2:**
/// ```
/// Input: head = [1,2]
/// Output: [2,1]
/// ```
///
/// **Example 3:**
/// ```
/// Input: head = []
/// Output: []
/// ```
///
/// **Constraints:**
/// ```
/// The number of nodes in the list is the range [0, 5000].
/// -5000 <= Node.val <= 5000
/// ```
///
/// - Note: A linked list can be reversed either iteratively or recursively. Could you implement both?
final class ReverseLinkedList_Solution {

    /// Iterative
    func reverseList_iterative(_ head: ListNode?) -> ListNode? {
        var head = head
        let tail = head

        while let tmp = tail?.next {
            tail?.next = tmp.next
            tmp.next = head
            head = tmp
        }

        return head
    }

    /// Recursive
    func reverseList_recursive(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil }
        guard let next = head.next else { return head }

        let newHead = reverseList_recursive(next)
        next.next = head
        head.next = nil
        return newHead
    }

}
