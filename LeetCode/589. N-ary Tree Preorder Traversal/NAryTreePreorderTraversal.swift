//
//  NAryTreePreorderTraversal.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 589. N-ary Tree Preorder Traversal (Stack, Tree, Depth-First Search)

/// Given the root of an n-ary tree, return the preorder traversal of its nodes' values.
/// Nary-Tree input serialization is represented in their level order traversal. Each group of children is separated by the null value (See examples)
///
/// **Example 1:**
/// Node: 1. Chidlren: [3, 2, 4]
///     Node: 3. Chidlren: [5, 6]
///         Node: 5. Chidlren: []
///         Node: 6. Chidlren: []
///     Node: 2. Chidlren: []
///     Node: 4. Chidlren: []
/// ```
/// Input: root = [1, nil, 3, 2, 4, nil, 5, 6]
/// Output: [1, 3, 5, 6, 2, 4]
/// ```
///
/// **Example 2:**
/// Node: 1. Chidlren: [2, 3, 4, 5]
///     Node: 2. Chidlren: []
///     Node: 3. Chidlren: [6, 7]
///         Node: 6. Chidlren: []
///         Node: 7. Chidlren: [11]
///             Node: 11. Chidlren: [14]
///                 Node: 14. Chidlren: []
///     Node: 4. Chidlren: [8]
///         Node: 8. Chidlren: [12]
///             Node: 12. Chidlren: []
///     Node: 5. Chidlren: [9, 10]
///         Node: 9. Chidlren: [13]
///             Node: 13. Chidlren: []
///         Node: 10. Chidlren: []
/// ```
/// Input: root = [1, nil, 2, 3, 4, 5, nil, nil, 6, 7, nil, 8, nil, 9, 10, nil, nil, 11, nil, 12, nil, 13, nil, nil, 14]
/// Output: [1, 2, 3, 6, 7, 11, 14, 4, 8, 12, 5, 9, 13, 10]
/// ```
///
/// **Constraints:**
/// ```
/// The number of nodes in the tree is in the range [0, 10⁴].
/// 0 <= Node.val <= 10⁴
/// The height of the n-ary tree is less than or equal to 1000.
/// ```
///
/// - Note: Recursive solution is trivial, could you do it iteratively?
final class NAryTreePreorderTraversal_Solution {

    /// Recursive solution
    func preorder_recursive(_ root: Node?) -> [Int] {
        guard let root else { return [] }

        var result = [root.val]

        for child in root.children {
            result.append(contentsOf: preorder_recursive(child))
        }

        return result
    }

    /// Iteratively solution
    func preorder_iteratively(_ root: Node?) -> [Int] {
        if root == nil { return [] }

        var stack = [root!]
        var result: [Int] = []

        while let last = stack.popLast() {
            result.append(last.val)
            var index = last.children.count - 1

            while index >= 0 {
                stack.append(last.children[index])
                index -= 1
            }
        }

        return result
    }

}

