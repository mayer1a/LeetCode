//
//  DeleteMiddleNodeOfLinkedList.swift
//  LeetCode
//
//  Created by Artem Mayer on 14.06.2024.
//

import Foundation

// MARK: - 2095. Delete the Middle Node of a Linked List

/// You are given the head of a linked list. Delete the middle node, and return the head of the modified linked list.
///
/// The middle node of a linked list of size n is the ⌊n / 2⌋th node from the start using 0-based indexing, where ⌊x⌋ denotes the largest integer less than or equal to x.
///
/// For n = 1, 2, 3, 4, and 5, the middle nodes are 0, 1, 1, 2, and 2, respectively.
///
///
/// **Example 1:**
///
/// ![Img1](https://assets.leetcode.com/uploads/2021/11/16/eg1drawio.png)
/// ```
/// Input: head = [1,3,4,7,1,2,6]
/// Output: [1,3,4,1,2,6]
/// Explanation:
/// The above figure represents the given linked list. The indices of the nodes are written below.
/// Since n = 7, node 3 with value 7 is the middle node, which is marked in red.
/// We return the new list after removing this node.
/// ```
///
/// **Example 2:**
///
/// ![Img2](https://assets.leetcode.com/uploads/2021/11/16/eg2drawio.png)
/// ```
/// Input: head = [1,2,3,4]
/// Output: [1,2,4]
/// Explanation:
/// The above figure represents the given linked list.
/// For n = 4, node 2 with value 3 is the middle node, which is marked in red.
/// ```
///
/// **Example 3:**
///
/// ![Img3](https://assets.leetcode.com/uploads/2021/11/16/eg3drawio.png)
/// ```
/// Input: head = [2,1]
/// Output: [2]
/// Explanation:
/// The above figure represents the given linked list.
/// For n = 2, node 1 with value 1 is the middle node, which is marked in red.
/// Node 0 with value 2 is the only node remaining after removing node 1.
/// ```
///
/// **Constraints:**
/// ```
/// The number of nodes in the list is in the range [1, 10⁵].
/// 1 <= Node.val <= 10⁵
/// ```
final class DeleteMiddleNodeOfLinkedList_Solution {

    func deleteMiddle(_ head: ListNode<Int>?) -> ListNode<Int>? {
        if head?.next == nil { return nil }

        var slow = head
        var fast = head?.next
        var mid = 1
        var count = 2

        while fast != nil {
            if count / 2 > mid {
                mid += 1
                slow = slow?.next
            }
            count += 1
            fast = fast?.next
        }

        slow?.next = slow?.next?.next

        return head
    }

}
