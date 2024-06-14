//
//  MergeTwoSortedLists.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 21. Merge Two Sorted Lists (Linked List, recursion)

/// You are given the heads of two sorted linked lists list1 and list2.
///
/// Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
///
/// Return the head of the merged linked list.
///
///
/// **Example 1:**
/// ```
/// Input: list1 = [1,2,4], list2 = [1,3,4]
/// Output: [1,1,2,3,4,4]
/// ```
///
/// **Example 2:**
/// ```
/// Input: list1 = [], list2 = []
/// Output: []
/// ```
///
/// **Example 3:**
/// ```
/// Input: list1 = [], list2 = [0]
/// Output: [0]
/// ```
///
/// **Constraints:**
/// ```
/// The number of nodes in both lists is in the range [0, 50].
/// -100 <= Node.val <= 100
/// Both list1 and list2 are sorted in non-decreasing order.
/// ```
final class MergeTwoSortedLists_Solution {

    func mergeTwoLists_v1(_ list1: ListNode<Int>?, _ list2: ListNode<Int>?) -> ListNode<Int>? {
        guard list1 != nil else { return list2 }
        guard list2 != nil else { return list1 }

        var head: ListNode<Int>?
        var temp: ListNode<Int>?
        var l1 = list1
        var l2 = list2

        if l1!.val <= l2!.val {
            head = ListNode(l1!.val)
            l1 = l1?.next
        } else {
            head = ListNode(l2!.val)
            l2 = l2?.next
        }

        temp = head

        while let next1 = l1, let next2 = l2 {
            if next1.val <= next2.val {
                temp?.next = ListNode(next1.val)
                l1 = next1.next
            } else {
                temp?.next = ListNode(next2.val)
                l2 = next2.next
            }

            temp = temp?.next
        }

        guard let eNods = l1 != nil ? l1 : l2 else {
            return head
        }

        temp?.next = eNods

        return head
    }

    /// Alternative
    func mergeTwoLists_v2(_ list1: ListNode<Int>?, _ list2: ListNode<Int>?) -> ListNode<Int>? {
        guard list1 != nil else { return list2 }
        guard list2 != nil else { return list1 }

        if list1!.val <= list2!.val {
            list1?.next = mergeTwoLists_v2(list1?.next, list2)
            return list1
        } else {
            list1?.next = mergeTwoLists_v2(list1, list2?.next)
            return list2
        }
    }

}
