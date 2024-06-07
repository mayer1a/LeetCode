//
//  TrieNode.swift
//  LeetCode
//
//  Created by Artem Mayer on 07.06.2024.
//

import Foundation

public final class TrieNode<T: Hashable> {

    var value: T?
    weak var parentNode: TrieNode?
    var children: [T: TrieNode]
    var isTerminating = false
    var isLeaf: Bool {
        children.count == 0
    }

    init(value: T? = nil, parentNode: TrieNode? = nil) {
        self.value = value
        self.parentNode = parentNode
        children = [:]
    }

    func add(_ value: T) {
        if children[value] == nil {
            children[value] = TrieNode(value: value, parentNode: self)
        }
    }

}
