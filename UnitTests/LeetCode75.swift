//
//  LeetCode75_UnitTests.swift
//  LeetCode
//
//  Created by Artem Mayer on 23.05.2024.
//

import XCTest
@testable import LeetCode75

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

    // MARK: - 104. Maximum Depth of Binary Tree

    func testMaximumDepthOfBinaryTree() throws{
        let case1 = TreeNode(3, .init(9), .init(20, .init(15), .init(7)))
        let case2 = TreeNode(1, nil, .init(2))
        let case3: TreeNode? = nil
        let case4 = {
            TreeNode(1, // Root
                     .init(2, // Left
                        .init(4, // Left
                              .init(8), // Left
                              .init(9, // Right
                                    .init(10, // Left
                                          .init(19), // Left
                                          nil), // Right
                                    .init(12))), // Right
                        .init(5, // Right
                              .init(20, // Left
                                    .init(24, // Left
                                          .init(30), // Left
                                          nil), // Right
                                    nil), // Right
                              nil)), // Right
                     .init(3, // Right
                           .init(6, // Left
                                 nil, // Left
                                 .init(31, // Right
                                       .init(29, // Left
                                             .init(40, // Left
                                                   .init(41), // Left
                                                   nil), // Right
                                             nil), // Right
                                       nil)), // Right
                           .init(7, // Right
                                 nil, // Left
                                 .init(32, // Right
                                       .init(33), // Left
                                       nil)))) // Right
        }()

        let case1Result = 3
        let case2Result = 2
        let case3Result = 0
        let case4Result = 7

        XCTAssertEqual(solution.maximumDepthOfBinaryTree(case1), case1Result)
        XCTAssertEqual(solution.maximumDepthOfBinaryTree(case2), case2Result)
        XCTAssertEqual(solution.maximumDepthOfBinaryTree(case3), case3Result)
        XCTAssertEqual(solution.maximumDepthOfBinaryTree(case4), case4Result)
    }

    // MARK: - 136. Single Number

    func testSingleNumber() throws {
        let case1 = [2, 2, 1]
        let case2 = [4, 1, 2, 1, 2]
        let case3 = [6]
        let case4 = [1, 2, 10, 100, 94, 2, 1, 94, 10, 4, 4, 100, 5]
        let case5 = [1, 2, 10, 100, 94, 2, 1, 7, 94, 10, 4, 4, 100]

        let case1Result = 1
        let case2Result = 4
        let case3Result = 6
        let case4Result = 5
        let case5Result = 7

        XCTAssertEqual(solution.singleNumber(case1), case1Result)
        XCTAssertEqual(solution.singleNumber(case2), case2Result)
        XCTAssertEqual(solution.singleNumber(case3), case3Result)
        XCTAssertEqual(solution.singleNumber(case4), case4Result)
        XCTAssertEqual(solution.singleNumber(case5), case5Result)
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

    // MARK: - 338. Counting Bits

    func testCountingBits() throws {
        let case1 = 2
        let case2 = 5
        let case3 = 0
        let case4 = 512
        let case5 = 713

        let case1Result = [0, 1, 1]
        let case2Result = [0, 1, 1, 2, 1, 2]
        let case3Result = [0]
        let case4Result = [
            0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3,
            2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4,
            2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5,
            4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
            2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5,
            4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6,
            4, 5, 5, 6, 5, 6, 6, 7, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7,
            6, 7, 7, 8, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
            2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 2, 3, 3, 4,
            3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 3, 4, 4, 5, 4, 5, 5, 6,
            4, 5, 5, 6, 5, 6, 6, 7, 4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5,
            4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7,
            4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 4, 5, 5, 6,
            5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8, 4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8, 5, 6, 6, 7, 6, 7, 7, 8,
            6, 7, 7, 8, 7, 8, 8, 9, 1
        ]
        let case5Result = [
            0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3,
            2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4,
            2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5,
            4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,
            2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5,
            4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6,
            4, 5, 5, 6, 5, 6, 6, 7, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7,
            6, 7, 7, 8, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,
            2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 2, 3, 3, 4,
            3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 3, 4, 4, 5, 4, 5, 5, 6,
            4, 5, 5, 6, 5, 6, 6, 7, 4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5,
            4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7,
            4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 4, 5, 5, 6,
            5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8, 4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8, 5, 6, 6, 7, 6, 7, 7, 8,
            6, 7, 7, 8, 7, 8, 8, 9, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5,
            4, 5, 5, 6, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7,
            2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 3, 4, 4, 5,
            4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8, 2, 3, 3, 4, 3, 4, 4, 5,
            3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6,
            5, 6, 6, 7, 4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5
        ]

        XCTAssertEqual(solution.countingBits(case1), case1Result)
        XCTAssertEqual(solution.countingBits(case2), case2Result)
        XCTAssertEqual(solution.countingBits(case3), case3Result)
        XCTAssertEqual(solution.countingBits(case4), case4Result)
        XCTAssertEqual(solution.countingBits(case5), case5Result)
    }

    // MARK: - 345. Reverse Vowels of a String

    func testReverseVowelsOfString() throws {
        let case1 = "hello"
        let case2 = "leetcode"
        let case3 = "aA"

        let case1Result = "holle"
        let case2Result = "leotcede"
        let case3Result = "Aa"

        XCTAssertEqual(solution.reverseVowelsOfString(case1), case1Result)
        XCTAssertEqual(solution.reverseVowelsOfString(case2), case2Result)
        XCTAssertEqual(solution.reverseVowelsOfString(case3), case3Result)
    }

    // MARK: - 374. Guess Number Higher or Lower

    func testGuessNumberHigherOrLower_v1() throws {
        let case1 = (100, 67)
        let case2 = (100, 49)
        let case3 = (1, 1)
        let case4 = (100, 100)
        let case5 = (1_000_000_000, 999_999_999)

        // v1Linear
        XCTAssertEqual(solution.guessNumberHigherOrLower(case1.0, pickedNum: case1.1, version: .v1Linear), case1.1)
        XCTAssertEqual(solution.guessNumberHigherOrLower(case2.0, pickedNum: case2.1, version: .v1Linear), case2.1)
        XCTAssertEqual(solution.guessNumberHigherOrLower(case3.0, pickedNum: case3.1, version: .v1Linear), case3.1)
        XCTAssertEqual(solution.guessNumberHigherOrLower(case4.0, pickedNum: case4.1, version: .v1Linear), case4.1)
        XCTAssertEqual(solution.guessNumberHigherOrLower(case5.0, pickedNum: case5.1, version: .v1Linear), case5.1)
        // v2Linear
        XCTAssertEqual(solution.guessNumberHigherOrLower(case1.0, pickedNum: case1.1, version: .v2Linear), case1.1)
        XCTAssertEqual(solution.guessNumberHigherOrLower(case2.0, pickedNum: case2.1, version: .v2Linear), case2.1)
        XCTAssertEqual(solution.guessNumberHigherOrLower(case3.0, pickedNum: case3.1, version: .v2Linear), case3.1)
        XCTAssertEqual(solution.guessNumberHigherOrLower(case4.0, pickedNum: case4.1, version: .v2Linear), case4.1)
        XCTAssertEqual(solution.guessNumberHigherOrLower(case5.0, pickedNum: case5.1, version: .v2Linear), case5.1)
        // v3Recursive
        XCTAssertEqual(solution.guessNumberHigherOrLower(case1.0, pickedNum: case1.1, version: .v3Recursive), case1.1)
        XCTAssertEqual(solution.guessNumberHigherOrLower(case2.0, pickedNum: case2.1, version: .v3Recursive), case2.1)
        XCTAssertEqual(solution.guessNumberHigherOrLower(case3.0, pickedNum: case3.1, version: .v3Recursive), case3.1)
        XCTAssertEqual(solution.guessNumberHigherOrLower(case4.0, pickedNum: case4.1, version: .v3Recursive), case4.1)
        XCTAssertEqual(solution.guessNumberHigherOrLower(case5.0, pickedNum: case5.1, version: .v3Recursive), case5.1)
    }

    // MARK: - 392. Is Subsequence

    func testIsSubsequence() throws {
        let case1 = ("abc", "ahbgdc")
        let case2 = ("acb", "ahbgdc")
        let case3 = ("", "")
        let case4 = ("abc", "")

        let case1Result = true
        let case2Result = false
        let case3Result = true
        let case4Result = false

        XCTAssertEqual(solution.isSubsequence(case1.0, case1.1), case1Result)
        XCTAssertEqual(solution.isSubsequence(case2.0, case2.1), case2Result)
        XCTAssertEqual(solution.isSubsequence(case3.0, case3.1), case3Result)
        XCTAssertEqual(solution.isSubsequence(case4.0, case4.1), case4Result)

        XCTAssertEqual(solution.isSubsequence(case1.0, case1.1, alt: true), case1Result)
        XCTAssertEqual(solution.isSubsequence(case2.0, case2.1, alt: true), case2Result)
        XCTAssertEqual(solution.isSubsequence(case3.0, case3.1, alt: true), case3Result)
        XCTAssertEqual(solution.isSubsequence(case4.0, case4.1, alt: true), case4Result)
    }

    // MARK: - 605. Can Place Flowers

    func testCanPlaceFlowers() throws {
        let case1 = ([1, 0, 0, 0, 1], 1)
        let case2 = ([1, 0, 0, 0, 1], 2)
        let case3 = ([0, 0, 0, 0, 1], 2)
        let case4 = ([0, 0, 0, 0, 0], 3)
        let case5 = ([0, 0, 1, 0, 0], 3)
        let case6 = ([0, 0, 0], 2)
        let case7 = ([0, 0, 0], 3)
        let case8 = ([0, 0], 1)
        let case9 = ([0, 0], 2)
        let case10 = ([0], 1)
        let case11 = ([1], 0)

        let case1Result = true
        let case2Result = false
        let case3Result = true
        let case4Result = true
        let case5Result = false
        let case6Result = true
        let case7Result = false
        let case8Result = true
        let case9Result = false
        let case10Result = true
        let case11Result = true

        XCTAssertEqual(solution.canPlaceFlowers(case1.0, case1.1), case1Result)
        XCTAssertEqual(solution.canPlaceFlowers(case2.0, case2.1), case2Result)
        XCTAssertEqual(solution.canPlaceFlowers(case3.0, case3.1), case3Result)
        XCTAssertEqual(solution.canPlaceFlowers(case4.0, case4.1), case4Result)
        XCTAssertEqual(solution.canPlaceFlowers(case5.0, case5.1), case5Result)
        XCTAssertEqual(solution.canPlaceFlowers(case6.0, case6.1), case6Result)
        XCTAssertEqual(solution.canPlaceFlowers(case7.0, case7.1), case7Result)
        XCTAssertEqual(solution.canPlaceFlowers(case8.0, case8.1), case8Result)
        XCTAssertEqual(solution.canPlaceFlowers(case9.0, case9.1), case9Result)
        XCTAssertEqual(solution.canPlaceFlowers(case10.0, case10.1), case10Result)
        XCTAssertEqual(solution.canPlaceFlowers(case11.0, case11.1), case11Result)

        XCTAssertEqual(solution.canPlaceFlowers(case1.0, case1.1, alt: true), case1Result)
        XCTAssertEqual(solution.canPlaceFlowers(case2.0, case2.1, alt: true), case2Result)
        XCTAssertEqual(solution.canPlaceFlowers(case3.0, case3.1, alt: true), case3Result)
        XCTAssertEqual(solution.canPlaceFlowers(case4.0, case4.1, alt: true), case4Result)
        XCTAssertEqual(solution.canPlaceFlowers(case5.0, case5.1, alt: true), case5Result)
        XCTAssertEqual(solution.canPlaceFlowers(case6.0, case6.1, alt: true), case6Result)
        XCTAssertEqual(solution.canPlaceFlowers(case7.0, case7.1, alt: true), case7Result)
        XCTAssertEqual(solution.canPlaceFlowers(case8.0, case8.1, alt: true), case8Result)
        XCTAssertEqual(solution.canPlaceFlowers(case9.0, case9.1, alt: true), case9Result)
        XCTAssertEqual(solution.canPlaceFlowers(case10.0, case10.1, alt: true), case10Result)
        XCTAssertEqual(solution.canPlaceFlowers(case11.0, case11.1, alt: true), case11Result)
    }

    // MARK: - 643. Maximum Average Subarray I

    func testMaximumAverageSubarrayI() throws {
        let case1 = ([1, 12, -5, -6, 50, 3], 4)
        let case2 = ([5], 1)

        let case1Result = 12.75
        let case2Result = 5.0

        XCTAssertEqual(solution.maximumAverageSubarrayI(case1.0, case1.1), case1Result, accuracy: 0.00001)
        XCTAssertEqual(solution.maximumAverageSubarrayI(case2.0, case2.1), case2Result, accuracy: 0.00001)
    }

    // MARK: - 700. Search in a Binary Search Tree

    func testSearchInBinarySearchTree() throws {
        let case1SubTree = TreeNode(2, .init(1), .init(3))
        let tree1 = TreeNode(4, case1SubTree, .init(7))
        let case4SubTree = TreeNode(7)
        let tree2 = TreeNode(8,
                             .init(3,
                                   .init(1),
                                   .init(6,
                                         .init(4),
                                         case4SubTree)),
                             .init(10,
                                   nil,
                                   .init(14,
                                         .init(13),
                                         nil)))
        let tree3: TreeNode? = nil

        let case1 = (tree1, 2)
        let case2 = (tree1, 5)
        let case3 = (tree2, 2)
        let case4 = (tree2, 7)
        let case5 = (tree3, 1)

        let case1Result = case1SubTree
        let case2Result: TreeNode? = nil
        let case3Result: TreeNode? = nil
        let case4Result = case4SubTree
        let case5Result: TreeNode? = nil

        XCTAssertIdentical(solution.searchInBinarySearchTree(case1.0, case1.1), case1Result)
        XCTAssertIdentical(solution.searchInBinarySearchTree(case2.0, case2.1), case2Result)
        XCTAssertIdentical(solution.searchInBinarySearchTree(case3.0, case3.1), case3Result)
        XCTAssertIdentical(solution.searchInBinarySearchTree(case4.0, case4.1), case4Result)
        XCTAssertIdentical(solution.searchInBinarySearchTree(case5.0, case5.1), case5Result)

        XCTAssertIdentical(solution.searchInBinarySearchTree(case1.0, case1.1, alt: true), case1Result)
        XCTAssertIdentical(solution.searchInBinarySearchTree(case2.0, case2.1, alt: true), case2Result)
        XCTAssertIdentical(solution.searchInBinarySearchTree(case3.0, case3.1, alt: true), case3Result)
        XCTAssertIdentical(solution.searchInBinarySearchTree(case4.0, case4.1, alt: true), case4Result)
        XCTAssertIdentical(solution.searchInBinarySearchTree(case5.0, case5.1, alt: true), case5Result)
    }

    // MARK: - 724. Find Pivot Index

    func testFindPivotIndex() throws {
        let case1 = [1, 7, 3, 6, 5, 6]
        let case2 = [1, 2, 3]
        let case3 = [2, 1, -1]
        let case4 = [4]
        let case5 = [-1, -1, -1, 1, 1, 1]
        let case6 = [-1, -1, 0, 1, 1, 0]
        let case7 = [1, 1, 0, 1, 1, 0]

        let case1Result = 3
        let case2Result = -1
        let case3Result = 0
        let case4Result = 0
        let case5Result = -1
        let case6Result = 5
        let case7Result = 2

        XCTAssertEqual(solution.findPivotIndex(case1), case1Result)
        XCTAssertEqual(solution.findPivotIndex(case2), case2Result)
        XCTAssertEqual(solution.findPivotIndex(case3), case3Result)
        XCTAssertEqual(solution.findPivotIndex(case4), case4Result)
        XCTAssertEqual(solution.findPivotIndex(case5), case5Result)
        XCTAssertEqual(solution.findPivotIndex(case6), case6Result)
        XCTAssertEqual(solution.findPivotIndex(case7), case7Result)
    }

    // MARK: - 746. Min Cost Climbing Stairs

    func testMinCostClimbingStairs() throws {
        let case1 = [10, 15, 20]
        let case2 = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
        let case3 = [
            841, 462, 566, 398, 243, 248, 238, 650, 989, 576, 361, 126, 334, 729, 446, 897, 953, 38, 195, 679, 65,
            707, 196, 705, 569, 275, 259, 872, 630, 965, 978, 109, 56, 523, 851, 887, 91, 544, 598, 963, 305, 481,
            959, 560, 454, 883, 50, 216, 732, 572, 511, 156, 177, 831, 122, 667, 548, 978, 771, 880, 922, 777, 990,
            498, 525, 317, 469, 151, 874, 202, 519, 139, 670, 341, 514, 469, 858, 913, 94, 849, 839, 813, 664, 163,
            3, 802, 21, 634, 944, 901, 446, 186, 843, 742, 330, 610, 932, 614, 625, 169, 833, 4, 81, 55, 124,
            294, 71, 24, 929, 534, 621, 543, 417, 534, 427, 327, 179, 90, 341, 949, 368, 692, 646, 290, 488, 145,
            273, 617, 596, 82, 538, 751, 80, 616, 763, 826, 932, 184, 630, 478, 163, 925, 259, 237, 839, 602, 60,
            786, 603, 413, 816, 278, 4, 35, 243, 64, 631, 405, 23, 638, 618, 829, 481, 877, 756, 482, 999, 973,
            718, 157, 262, 752, 931, 882, 741, 40, 77, 535, 542, 879, 607, 879, 321, 46, 210, 116, 244, 830, 591,
            285, 382, 925, 48, 497, 913, 203, 239, 696, 162, 623, 291, 525, 950, 27, 546, 293, 108, 577, 672, 354,
            256, 3, 671, 998, 22, 989, 557, 424, 251, 923, 542, 243, 46, 488, 80, 374, 372, 334, 190, 817, 150,
            742, 362, 196, 75, 193, 162, 645, 859, 758, 433, 903, 199, 289, 175, 303, 475, 818, 213, 576, 181, 668,
            243, 297, 572, 549, 840, 161, 292, 719, 226, 338, 981, 345, 203, 655, 210, 65, 111, 746, 76, 935, 406,
            646, 976, 567, 32, 726, 638, 674, 727, 861, 426, 297, 349, 464, 973, 341, 452, 826, 223, 805, 940, 458,
            468, 967, 107, 345, 987, 553, 407, 916, 103, 324, 367, 864, 74, 946, 712, 596, 105, 194, 79, 634, 855,
            703, 70, 170, 543, 208, 739, 632, 663, 880, 857, 824, 258, 743, 488, 659, 647, 470, 958, 492, 211, 927,
            356, 488, 744, 570, 143, 674, 502, 589, 270, 80, 6, 463, 506, 556, 495, 713, 407, 229, 689, 280, 162,
            454, 757, 565, 267, 575, 417, 948, 607, 269, 852, 938, 560, 24, 222, 580, 604, 800, 628, 487, 485, 615,
            796, 384, 555, 226, 412, 445, 503, 810, 949, 966, 28, 768, 83, 213, 883, 963, 831, 390, 951, 378, 497,
            440, 780, 209, 734, 290, 96, 398, 146, 56, 445, 880, 910, 858, 671, 164, 552, 686, 748, 738, 837, 556,
            710, 787, 343, 137, 298, 685, 909, 828, 499, 816, 538, 604, 652, 7, 272, 729, 529, 343, 443, 593, 992,
            434, 588, 936, 261, 873, 64, 177, 827, 172, 712, 628, 609, 328, 672, 376, 628, 441, 9, 92, 525, 222,
            654, 699, 134, 506, 934, 178, 270, 770, 994, 158, 653, 199, 833, 802, 553, 399, 366, 818, 523, 447, 420,
            957, 669, 267, 118, 535, 971, 180, 469, 768, 184, 321, 712, 167, 867, 12, 660, 283, 813, 498, 192, 740,
            696, 421, 504, 795, 894, 724, 562, 234, 110, 88, 100, 408, 104, 864, 473, 59, 474, 922, 759, 720, 69,
            490, 540, 962, 461, 324, 453, 91, 173, 870, 470, 292, 394, 771, 161, 777, 287, 560, 532, 339, 301, 90,
            411, 387, 59, 67, 828, 775, 882, 677, 9, 393, 128, 910, 630, 396, 77, 321, 642, 568, 817, 222, 902,
            680, 596, 359, 639, 189, 436, 648, 825, 46, 699, 967, 202, 954, 680, 251, 455, 420, 599, 20, 894, 224,
            47, 266, 644, 943, 808, 653, 563, 351, 709, 116, 849, 38, 870, 852, 333, 829, 306, 881, 203, 660, 266,
            540, 510, 748, 840, 821, 199, 250, 253, 279, 672, 472, 707, 921, 582, 713, 900, 137, 70, 912, 51, 250,
            188, 967, 14, 608, 30, 541, 424, 813, 343, 297, 346, 27, 774, 549, 931, 141, 81, 120, 342, 288, 332,
            967, 768, 178, 230, 378, 800, 408, 272, 596, 560, 942, 612, 910, 743, 461, 425, 878, 254, 929, 780, 641,
            657, 279, 160, 184, 585, 651, 204, 353, 454, 536, 185, 550, 428, 125, 889, 436, 906, 99, 942, 355, 666,
            746, 964, 936, 661, 515, 978, 492, 836, 468, 867, 422, 879, 92, 438, 802, 276, 805, 832, 649, 572, 638,
            43, 971, 974, 804, 66, 100, 792, 878, 469, 585, 254, 630, 309, 172, 361, 906, 628, 219, 534, 617, 95,
            190, 541, 93, 477, 933, 328, 984, 117, 678, 746, 296, 232, 240, 532, 643, 901, 982, 342, 918, 884, 62,
            68, 835, 173, 493, 252, 382, 862, 672, 803, 803, 873, 24, 431, 580, 257, 457, 519, 388, 218, 970, 691,
            287, 486, 274, 942, 184, 817, 405, 575, 369, 591, 713, 158, 264, 826, 870, 561, 450, 419, 606, 925, 710,
            758, 151, 533, 405, 946, 285, 86, 346, 685, 153, 834, 625, 745, 925, 281, 805, 99, 891, 122, 102, 874,
            491, 64, 277, 277, 840, 657, 443, 492, 880, 925, 65, 880, 393, 504, 736, 340, 64, 330, 318, 703, 949,
            950, 887, 956, 39, 595, 764, 176, 371, 215, 601, 435, 249, 86, 761, 793, 201, 54, 189, 451, 179, 849,
            760, 689, 539, 453, 450, 404, 852, 709, 313, 529, 666, 545, 399, 808, 290, 848, 129, 352, 846, 2, 266,
            777, 286, 22, 898, 81, 299, 786, 949, 435, 434, 695, 298, 402, 532, 177, 399, 458, 528, 672, 882, 90,
            547, 690, 935, 424, 516, 390, 346, 702, 781, 644, 794, 420, 116, 24, 919, 467, 543, 58, 938, 217, 502,
            169, 457, 723, 122, 158, 188, 109, 868, 311, 708, 8, 893, 853, 376, 359, 223, 654, 895, 877, 709, 940,
            195, 323, 64, 51, 807, 510, 170, 508, 155, 724, 784, 603, 67, 316, 217, 148, 972, 19, 658, 5, 762,
            618, 744, 534, 956, 703, 434, 302, 541, 997, 214, 429, 961, 648, 774, 244, 684, 218, 49, 729, 990, 521,
            948, 317, 847, 76, 566, 415, 874, 399, 613, 816, 613, 467, 191
        ]

        let case1Result = 15
        let case2Result = 6
        let case3Result = 209040

        XCTAssertEqual(solution.minCostClimbingStairs(case1), case1Result)
        XCTAssertEqual(solution.minCostClimbingStairs(case2), case2Result)
        XCTAssertEqual(solution.minCostClimbingStairs(case3), case3Result)
    }

    // MARK: - 872. Leaf-Similar Trees

    func testLeafSimilarTrees() throws {
        let case1_1 = TreeNode(3,
                             .init(5,
                                   .init(6),
                                   .init(2,
                                         .init(7),
                                         .init(4))),
                             .init(1,
                                   .init(9),
                                   .init(8)))
        let case1_2 = TreeNode(3,
                               .init(5,
                                     .init(6),
                                     .init(7)),
                               .init(1,
                                     .init(4),
                                     .init(2,
                                           .init(9),
                                           .init(8))))

        let case2_1: TreeNode? = nil
        let case2_2 = TreeNode(8)

        let case3_1 = {
            TreeNode(1,
                     .init(2,
                        .init(4,
                              .init(8),
                              .init(9,
                                    .init(10,
                                          .init(19),
                                          nil),
                                    .init(12))),
                        .init(5,
                              .init(20,
                                    .init(24,
                                          .init(30),
                                          nil),
                                    nil),
                              nil)),
                     .init(3,
                           .init(6,
                                 nil,
                                 .init(31,
                                       .init(29,
                                             .init(40,
                                                   .init(41),
                                                   nil),
                                             nil),
                                       nil)),
                           .init(7,
                                 nil,
                                 .init(32,
                                       .init(33),
                                       nil))))
        }()
        let case3_2 = {
            TreeNode(1,
                     .init(2,
                        .init(4,
                              .init(8),
                              .init(9,
                                    .init(10,
                                          .init(19),
                                          nil),
                                    .init(12))),
                        .init(5,
                              .init(20,
                                    .init(24,
                                          .init(30),
                                          nil),
                                    nil),
                              nil)),
                     .init(3,
                           .init(6,
                                 nil,
                                 .init(31,
                                       .init(29,
                                             .init(40,
                                                   .init(90),
                                                   nil),
                                             nil),
                                       nil)),
                           .init(7,
                                 nil,
                                 .init(32,
                                       .init(33),
                                       nil))))
        }()

        let case4_1 = TreeNode(1,
                               .init(2),
                               .init(3))
        let case4_2 = TreeNode(1,
                               .init(3),
                               .init(2))

        let case5_1 = case3_1
        let case5_2 = case3_1

        let case1Result = true
        let case2Result = false
        let case3Result = false
        let case4Result = false
        let case5Result = true

        XCTAssertEqual(solution.leafSimilarTrees(case1_1, case1_2), case1Result)
        XCTAssertEqual(solution.leafSimilarTrees(case2_1, case2_2), case2Result)
        XCTAssertEqual(solution.leafSimilarTrees(case3_1, case3_2), case3Result)
        XCTAssertEqual(solution.leafSimilarTrees(case4_1, case4_2), case4Result)
        XCTAssertEqual(solution.leafSimilarTrees(case5_1, case5_2), case5Result)
    }

    // MARK: - 933. Number of Recent Calls
    func testNumberOfRecentCalls() throws {
        let case1 = 1
        let case2 = 100
        let case3 = 3001
        let case4 = 3002

        let case1Result = 1
        let case2Result = 2
        let case3Result = 3
        let case4Result = 3

        XCTAssertEqual(solution.numberOfRecentCalls(case1), case1Result)
        XCTAssertEqual(solution.numberOfRecentCalls(case2), case2Result)
        XCTAssertEqual(solution.numberOfRecentCalls(case3), case3Result)
        XCTAssertEqual(solution.numberOfRecentCalls(case4), case4Result)
    }

    // MARK: - 1071. Greatest Common Divisor of Strings

    func testGreatestCommonDivisorOfStrings() throws {
        let case1 = ("ABABAB", "ABAB")
        let case2 = ("ABABABAB", "ABAB")
        let case3 = ("ABAB", "ABABAB")
        let case4 = ("ABAB", "ABABABAB")
        let case5 = ("ABCABC", "ABC")
        let case6 = ("ABC", "ABCABC")
        let case7 = ("LEET", "CODE")
        let case8 = ("ABCDEF", "ABC")

        let case1Result = "AB"
        let case2Result = "ABAB"
        let case3Result = "AB"
        let case4Result = "ABAB"
        let case5Result = "ABC"
        let case6Result = "ABC"
        let case7Result = ""
        let case8Result = ""

        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case1.0, case1.1), case1Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case2.0, case2.1), case2Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case3.0, case3.1), case3Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case4.0, case4.1), case4Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case5.0, case5.1), case5Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case6.0, case6.1), case6Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case7.0, case7.1), case7Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case8.0, case8.1), case8Result)

        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case1.0, case1.1, alt: true), case1Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case2.0, case2.1, alt: true), case2Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case3.0, case3.1, alt: true), case3Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case4.0, case4.1, alt: true), case4Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case5.0, case5.1, alt: true), case5Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case6.0, case6.1, alt: true), case6Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case7.0, case7.1, alt: true), case7Result)
        XCTAssertEqual(solution.greatestCommonDivisorOfStrings(case8.0, case8.1, alt: true), case8Result)
    }

    // MARK: - 1137. N-th Tribonacci Number

    func testNthTribonacciNumber() throws {
        let case1 = 4
        let case2 = 25
        let case3 = 30
        let case4 = 36

        let case1Result = 4
        let case2Result = 1389537
        let case3Result = 29249425
        let case4Result = 1132436852

        XCTAssertEqual(solution.nthTribonacciNumber(case1), case1Result)
        XCTAssertEqual(solution.nthTribonacciNumber(case2), case2Result)
        XCTAssertEqual(solution.nthTribonacciNumber(case3), case3Result)
        XCTAssertEqual(solution.nthTribonacciNumber(case4), case4Result)
    }

    // MARK: - 1207. Unique Number of Occurrences

    func testUniqueNumberOfOccurrences() throws {
        let case1 = [1, 2, 2, 1, 1, 3]
        let case2 = [1, 2]
        let case3 = [-3, 0, 1, -3, 1, 1, 1, -3, 10, 0]

        let case1Result = true
        let case2Result = false
        let case3Result = true

        XCTAssertEqual(solution.uniqueNumberOfOccurrences(case1), case1Result)
        XCTAssertEqual(solution.uniqueNumberOfOccurrences(case2), case2Result)
        XCTAssertEqual(solution.uniqueNumberOfOccurrences(case3), case3Result)

        XCTAssertEqual(solution.uniqueNumberOfOccurrences(case1, alt: true), case1Result)
        XCTAssertEqual(solution.uniqueNumberOfOccurrences(case2, alt: true), case2Result)
        XCTAssertEqual(solution.uniqueNumberOfOccurrences(case3, alt: true), case3Result)
    }

    // MARK: - 1431. Kids With the Greatest Number of Candies

    func testKidsWithTheGreatestNumberOfCandies() throws {
        let case1 = ([2, 3, 5, 1, 3], 3)
        let case2 = ([4, 2, 1, 1, 2], 1)
        let case3 = ([12, 1, 12], 10)

        let case1Result = [true, true ,true ,false, true]
        let case2Result = [true, false ,false ,false, false]
        let case3Result = [true, false ,true]

        XCTAssertEqual(solution.kidsWithTheGreatestNumberOfCandies(case1.0, case1.1), case1Result)
        XCTAssertEqual(solution.kidsWithTheGreatestNumberOfCandies(case2.0, case2.1), case2Result)
        XCTAssertEqual(solution.kidsWithTheGreatestNumberOfCandies(case3.0, case3.1), case3Result)
    }

    // MARK: - 1732. Find the Highest Altitude

    func testFindTheHighestAltitude() throws {
        let case1 = [-5, 1, 5, 0, -7]
        let case2 = [-4, -3, -2, -1, 4, 3, 2]

        let case1Result = 1
        let case2Result = 0

        XCTAssertEqual(solution.findTheHighestAltitude(case1), case1Result)
        XCTAssertEqual(solution.findTheHighestAltitude(case2), case2Result)
    }

    // MARK: - 1768. Merge Strings Alternately

    func testMergeStringsAlternately() throws {
        let case1 = ("abc", "pqr")
        let case2 = ("ab", "pqrs")
        let case3 = ("abcd", "pq")

        let case1Result = "apbqcr"
        let case2Result = "apbqrs"
        let case3Result = "apbqcd"

        XCTAssertEqual(solution.mergeStringsAlternately(case1.0, case1.1), case1Result)
        XCTAssertEqual(solution.mergeStringsAlternately(case2.0, case2.1), case2Result)
        XCTAssertEqual(solution.mergeStringsAlternately(case3.0, case3.1), case3Result)
    }

    // MARK: - 2215. Find the Difference of Two Arrays

    func testFindTheDifferenceOfTwoArrays() throws {
        let case1 = ([1, 2, 3], [2, 4, 6])
        let case2 = ([1, 2, 3, 3], [1, 1, 2, 2])

        let case1Result = [Set<Int>([1, 3]), Set<Int>([4, 6])]
        let case2Result = [Set<Int>([3]), Set<Int>([])]

        let _answer1v1 = solution.findTheDifferenceOfTwoArrays(case1.0, case1.1, version: .v1BruteForce)
        let answer1v1 = [Set<Int>(_answer1v1[0]), Set<Int>(_answer1v1[1])]
        let _answer2v1 = solution.findTheDifferenceOfTwoArrays(case2.0, case2.1, version: .v1BruteForce)
        let answer2v1 = [Set<Int>(_answer2v1[0]), Set<Int>(_answer2v1[1])]

        let _answer1v2 = solution.findTheDifferenceOfTwoArrays(case1.0, case1.1, version: .v1BruteForce)
        let answer1v2 = [Set<Int>(_answer1v2[0]), Set<Int>(_answer1v2[1])]
        let _answer2v2 = solution.findTheDifferenceOfTwoArrays(case2.0, case2.1, version: .v1BruteForce)
        let answer2v2 = [Set<Int>(_answer2v2[0]), Set<Int>(_answer2v2[1])]

        let _answer1v3 = solution.findTheDifferenceOfTwoArrays(case1.0, case1.1, version: .v1BruteForce)
        let answer1v3 = [Set<Int>(_answer1v3[0]), Set<Int>(_answer1v3[1])]
        let _answer2v3 = solution.findTheDifferenceOfTwoArrays(case2.0, case2.1, version: .v1BruteForce)
        let answer2v3 = [Set<Int>(_answer2v3[0]), Set<Int>(_answer2v3[1])]

        XCTAssertEqual(answer1v1, case1Result)
        XCTAssertEqual(answer2v1, case2Result)

        XCTAssertEqual(answer1v2, case1Result)
        XCTAssertEqual(answer2v2, case2Result)

        XCTAssertEqual(answer1v3, case1Result)
        XCTAssertEqual(answer2v3, case2Result)
    }

}
