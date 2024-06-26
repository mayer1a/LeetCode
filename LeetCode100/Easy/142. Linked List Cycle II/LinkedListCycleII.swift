//
//  LinkedListCycleII.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 142. Linked List Cycle II (Hash Table, Linked List)

/// Given the head of a linked list, return the node where the cycle begins. If there is no cycle, return null.
///
/// There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to (0-indexed). It is -1 if there is no cycle. Note that pos is not passed as a parameter.
///
/// Do not modify the linked list.
///
///
/// **Example 1:**
/// ```
/// Input: head = [3,2,0,-4], pos = 1
/// Output: tail connects to node index 1
/// Explanation: There is a cycle in the linked list, where tail connects to the second node.
/// ```
///
/// **Example 2:**
/// ```
/// Input: head = [1,2], pos = 0
/// Output: tail connects to node index 0
/// Explanation: There is a cycle in the linked list, where tail connects to the first node.
/// ```
///
/// **Example 3:**
/// ```
/// Input: head = [1], pos = -1
/// Output: no cycle
/// Explanation: There is no cycle in the linked list.
/// ```
///
/// **Constraints:**
/// ```
/// The number of the nodes in the list is in the range [0, 10⁴].
/// -10⁵ <= Node.val <= 10⁵
/// pos is -1 or a valid index in the linked-list.
/// ```
///
/// - Note: Can you solve it using O(1) (i.e. constant) memory?
final class LinkedListCycleII_Solution {

    func detectCycle(_ head: ListNode<Int>?) -> ListNode<Int>? {
        var slow = head
        var fast = head

        while slow != nil, fast != nil {
            slow = slow?.next
            fast = fast?.next?.next

            if slow === fast {
                var iSlow = head

                while iSlow !== slow {
                    slow = slow?.next
                    iSlow = iSlow?.next
                }

                return iSlow
            }
        }

        return nil
    }

}
