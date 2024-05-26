//
//  UnitTests.swift
//  UnitTests
//
//  Created by Artem Mayer on 26.08.22.
//

import XCTest
@testable import LeetCode

final class UnitTests: XCTestCase {

    var solution: Solution!
    var listNode: ListNode!

    override func setUpWithError() throws {
        try super.setUpWithError()

        solution = Solution()
        listNode = ListNode()
// Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        solution = nil
        try super.tearDownWithError()
// Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: - 21. Merge Two Sorted Lists

    func testMergeTwoSortedLists() throws {
        let case1: (ListNode?, ListNode?) = (ListNode(1, ListNode(2, ListNode(4))),
                                             ListNode(1, ListNode(3, ListNode(4))))
        let case2: (ListNode?, ListNode?) = (nil, nil)
        let case3: (ListNode?, ListNode?) = (nil, ListNode(0))
        let case4: (ListNode?, ListNode?) = (ListNode(1, ListNode(3, ListNode(5))),
                                             ListNode(2, ListNode(4, ListNode(6, ListNode(7, ListNode(8, ListNode(9, ListNode(10))))))))

        let case1Result = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4))))))
        let case2Result: ListNode? = nil
        let case3Result = ListNode(0)
        let case4Result = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, ListNode(6, ListNode(7, ListNode(8, ListNode(9, ListNode(10))))))))))

        XCTAssertEqual(solution.mergeTwoSortedLists(case1.0, case1.1), case1Result)
        XCTAssertEqual(solution.mergeTwoSortedLists(case2.0, case2.1), case2Result)
        XCTAssertEqual(solution.mergeTwoSortedLists(case3.0, case3.1), case3Result)
        XCTAssertEqual(solution.mergeTwoSortedLists(case4.0, case4.1), case4Result)

//        XCTAssertEqual(solution.mergeTwoSortedLists(case1.0, case1.1, alternativeSolution: true),
//                       case1Result)
//        XCTAssertEqual(solution.mergeTwoSortedLists(case2.0, case2.1, alternativeSolution: true),
//                       case2Result)
//        XCTAssertEqual(solution.mergeTwoSortedLists(case3.0, case3.1, alternativeSolution: true),
//                       case3Result)
//        XCTAssertEqual(solution.mergeTwoSortedLists(case4.0, case4.1, alternativeSolution: true),
//                       case4Result)
    }

    // MARK: - 102. Binary Tree Level Order Traversal

    func testBinaryTreeLevelOrderTraversal() throws {
        let case1 = TreeNode(1,
                             TreeNode(2,
                                      TreeNode(4),
                                      TreeNode(5)),
                             TreeNode(3))

        let case1Result = [[1], [2, 3], [4, 5]]

        XCTAssertEqual(solution.binaryTreeLevelOrderTraversal(case1), case1Result)

        XCTAssertEqual(solution.binaryTreeLevelOrderTraversal(case1, iterative: false), case1Result)
    }

}
