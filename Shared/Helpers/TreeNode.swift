//
//  TreeNode.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

/// Definition for a binary tree node.
public final class TreeNode<T: Hashable> {

    public var val: T
    public var left: TreeNode?
    public var right: TreeNode?

    public init(_ val: T) {
        self.val = val
        self.left = nil
        self.right = nil
    }

    public init(_ val: T, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }

}

extension TreeNode: Equatable {

    public static func ==(_ lhs: TreeNode, _ rhs: TreeNode) -> Bool {
        lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
    }

}
