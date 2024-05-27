//
//  Node.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

/// Definition for a tree node
public final class Node {

    public var val: Int
    public var children: [Node]

    public init(_ val: Int) {
        self.val = val
        self.children = []
    }

    public init(_ val: Int, children: [Node]) {
        self.val = val
        self.children = children
    }

}
