//
//  OddEvenLinkedList.swift
//  LeetCode
//
//  Created by Artem Mayer on 14.06.2024.
//

import Foundation

// MARK: - 328. Odd Even Linked List

/// Given the head of a singly linked list, group all the nodes with odd indices together followed by the nodes with even indices, and return the reordered list.
///
/// The first node is considered odd, and the second node is even, and so on.
///
/// Note that the relative order inside both the even and odd groups should remain as it was in the input.
///
/// - Important: You must solve the problem in O(1) extra space complexity and O(n) time complexity.
///
///
/// **Example 1:**
/// 
/// ![Img1](https://assets.leetcode.com/uploads/2021/03/10/oddeven-linked-list.jpg)
/// ```
/// Input: head = [1,2,3,4,5]
/// Output: [1,3,5,2,4]
/// ```
///
/// **Example 2:**
///
/// ![Img2](https://assets.leetcode.com/uploads/2021/03/10/oddeven2-linked-list.jpg)
/// ```
/// Input: head = [2,1,3,5,6,4,7]
/// Output: [2,3,6,7,1,5,4]
/// ```
///
/// **Constraints:**
/// ```
/// The number of nodes in the linked list is in the range [0, 10⁴].
/// -106 <= Node.val <= 10⁶
/// ```
final class OddEvenLinkedList_Solution {

    func oddEvenList(_ head: ListNode<Int>?) -> ListNode<Int>? {
        var n = head
        var e = head?.next
        var eHead = e

        while e != nil && e?.next != nil {
            n?.next = e?.next
            n = n?.next
            e?.next = n?.next
            e = e?.next
        }

        n?.next = eHead
        return head
    }

}
