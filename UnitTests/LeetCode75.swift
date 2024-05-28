//
//  LeetCode75_UnitTests.swift
//  LeetCode
//
//  Created by Artem Mayer on 23.05.2024.
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

    // MARK: - 206. Reverse Linked List

    func testReverseLinkedList() throws {
        let case1: ListNode? = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
        let case2: ListNode? = ListNode(5, ListNode(4))
        let case3: ListNode? = ListNode(5)
        let case4: ListNode? = nil

        let case1Result: ListNode? = ListNode(5, ListNode(4, ListNode(3, ListNode(2, ListNode(1)))))
        let case2Result: ListNode? = ListNode(4, ListNode(5))
        let case3Result: ListNode? = ListNode(5)
        let case4Result: ListNode? = nil

        XCTAssertEqual(solution.reverseLinkedList(case1), case1Result)
        XCTAssertEqual(solution.reverseLinkedList(case2), case2Result)
        XCTAssertEqual(solution.reverseLinkedList(case3), case3Result)
        XCTAssertEqual(solution.reverseLinkedList(case4), case4Result)

//        XCTAssertEqual(solution.reverseLinkedList(case1, iterative: false), case1Result)
//        XCTAssertEqual(solution.reverseLinkedList(case2, iterative: false), case2Result)
//        XCTAssertEqual(solution.reverseLinkedList(case3, iterative: false), case3Result)
//        XCTAssertEqual(solution.reverseLinkedList(case4, iterative: false), case4Result)
    }

    // MARK: - 283. Move Zeroes

    func testMoveZeroes() throws {
        var case1 = [0, 1, 0, 3, 12]
        var case2 = [45192, 0, -659, -52359, -99225, -75991, 0, -15155,
                     27382, 59818, 0, -30645, -17025, 81209, 887, 64648]

        let case1Result = [1, 3, 12, 0, 0]
        let case2Result = [45192, -659, -52359, -99225, -75991, -15155, 27382,
                           59818, -30645, -17025, 81209, 887, 64648, 0, 0, 0]

        // Change value to change solution version
        let alt = true

        if alt {
            XCTAssertEqual({ solution.moveZeroes(&case1); return case1 }(), case1Result)
            XCTAssertEqual({ solution.moveZeroes(&case2); return case2 }(), case2Result)
        } else {
            XCTAssertEqual({ solution.moveZeroes(&case1, alt: true); return case1 }(), case1Result)
            XCTAssertEqual({ solution.moveZeroes(&case2, alt: true); return case2 }(), case2Result)
        }
    }

}
