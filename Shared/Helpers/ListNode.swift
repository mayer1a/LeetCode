//
//  List.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

/// Definition for a single-linked list node
public final class ListNode<T: Hashable> {

    public var val: T
    public var next: ListNode?

    public init(_ val: T, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }

    /// Returns all linked list values array
    public var description: [T] {
        var _result = [T]()
        var _current: ListNode<T>? = self

        while let val = _current?.val {
            _result.append(val)
            _current = _current?.next
        }
        return _result
    }

}

extension ListNode: Equatable {

    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        lhs.val == rhs.val && lhs.next == rhs.next
    }

}
