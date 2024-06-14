//
//  Node.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

/// Definition for a tree node
public final class Node<T: Hashable> {

    public var val: T
    public var children: [Node]

    public init(_ val: T, children: [Node] = []) {
        self.val = val
        self.children = children
    }

}

extension Node: Equatable {

    public static func ==(_ lhs: Node, _ rhs: Node) -> Bool {
        lhs.val == rhs.val && lhs.children == rhs.children
    }

}
