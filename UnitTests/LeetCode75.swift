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

}
