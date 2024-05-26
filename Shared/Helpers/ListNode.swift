//
//  List.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

/// Definition for a single-linked list node
public final class ListNode {
    
    public var val: Int
    public var next: ListNode?

    public init() {
        self.val = 0
        self.next = nil
    }

    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }

    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }

}

extension ListNode: Equatable {

    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        lhs.next == nil && rhs.next == nil ? lhs.val == rhs.val : lhs.next == rhs.next
    }

}
