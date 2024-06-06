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

    // MARK: - 11. Container With Most Water

    func testContainerWithMostWater() throws {
        let case1 = [1, 8, 6, 2, 5, 4, 8, 3, 7]
        let case2 = [1, 1]
        let case3 = [1, 2, 100, 100, 4, 3]
        let case4 = [1, 7, 6, 2, 5, 4, 8, 3, 7]

        let case1Result = 49
        let case2Result = 1
        let case3Result = 100
        let case4Result = 49

        XCTAssertEqual(solution.containerWithMostWater(case1), case1Result)
        XCTAssertEqual(solution.containerWithMostWater(case2), case2Result)
        XCTAssertEqual(solution.containerWithMostWater(case3), case3Result)
        XCTAssertEqual(solution.containerWithMostWater(case4), case4Result)
    }

    // MARK: - 104. Maximum Depth of Binary Tree

    func testMaximumDepthOfBinaryTree() throws{
        let _cases = _MaximumDepthOfBinaryTree()
        let case1 = _cases.case1
        let case2 = _cases.case2
        let case3 = _cases.case3
        let case4 = _cases.case4

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

    // MARK: - 151. Reverse Words in a String

    func testReverseWordsInString() throws {
        let case1 = "the sky is blue "
        let case2 = "  hello world  "
        let case3 = "a good   example"

        let case1Result = "blue is sky the"
        let case2Result = "world hello"
        let case3Result = "example good a"

        XCTAssertEqual(solution.reverseWordsInString(case1), case1Result)
        XCTAssertEqual(solution.reverseWordsInString(case2), case2Result)
        XCTAssertEqual(solution.reverseWordsInString(case3), case3Result)
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

    // MARK: - 238. Product of Array Except Self

    func testProductOfArrayExceptSelf() throws {
        let case1 = [1, 2, 3, 4]
        let case2 = [-1, 1, 0, -3, 3]
        let case3 = [2, 2, 3, 4]

        let case1Result = [24, 12, 8, 6]
        let case2Result = [0, 0, 9, 0, 0]
        let case3Result = [24, 24, 16, 12]

        XCTAssertEqual(solution.productOfArrayExceptSelf(case1), case1Result)
        XCTAssertEqual(solution.productOfArrayExceptSelf(case2), case2Result)
        XCTAssertEqual(solution.productOfArrayExceptSelf(case3), case3Result)
    }

    // MARK: - 283. Move Zeroes

    func testMoveZeroes() throws {
        var case1 = [0, 1, 0, 3, 12]
        var case2 = [45192, 0, -659, -52359, -99225, -75991, 0, -15155,
                     27382, 59818, 0, -30645, -17025, 81209, 887, 64648]

        let case1Result = [1, 3, 12, 0, 0]
        let case2Result = [45192, -659, -52359, -99225, -75991, -15155, 27382,
                           59818, -30645, -17025, 81209, 887, 64648, 0, 0, 0]

        XCTAssertEqual({ solution.moveZeroes(&case1); return case1 }(), case1Result)
        XCTAssertEqual({ solution.moveZeroes(&case2); return case2 }(), case2Result)

        XCTAssertEqual({ solution.moveZeroes(&case1, alt: true); return case1 }(), case1Result)
        XCTAssertEqual({ solution.moveZeroes(&case2, alt: true); return case2 }(), case2Result)
    }

    // MARK: - 334. Increasing Triplet Subsequence

    func testIncreasingTripletSubsequence() throws {
        let case1 = [1, 2, 3, 4, 5]
        let case2 = [5, 4, 3, 2, 1]
        let case3 = [2, 1, 5, 0, 4, 6]
        let case4 = [4, 1, 8, 2, 3, 0, 4, 6]
        let case5 = [0, 4, 2, 1, 0, -1, -3]

        let case1Result = true
        let case2Result = false
        let case3Result = true
        let case4Result = true
        let case5Result = false

        XCTAssertEqual(solution.increasingTripletSubsequence(case1), case1Result)
        XCTAssertEqual(solution.increasingTripletSubsequence(case2), case2Result)
        XCTAssertEqual(solution.increasingTripletSubsequence(case3), case3Result)
        XCTAssertEqual(solution.increasingTripletSubsequence(case4), case4Result)
        XCTAssertEqual(solution.increasingTripletSubsequence(case5), case5Result)
    }

    // MARK: - 338. Counting Bits

    func testCountingBits() throws {
        let _cases = _CountingBits()
        let case1 = 2
        let case2 = 5
        let case3 = 0
        let case4 = 512
        let case5 = 713

        let case1Result = _cases.case1Result
        let case2Result = _cases.case2Result
        let case3Result = _cases.case3Result
        let case4Result = _cases.case4Result
        let case5Result = _cases.case5Result

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

    // MARK: - 443. String Compression

    func testStringCompression() throws {
        var case1: [Character] = ["a", "a", "b", "b", "c", "c", "c"]
        var case2: [Character] = ["a"]
        var case3: [Character] = ["a", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b", "b"]

        let case1Result: ([Character], Int) = (["a", "2", "b", "2", "c", "3"], 6)
        let case2Result: ([Character], Int) = (["a"], 1)
        let case3Result: ([Character], Int) = (["a", "b", "1", "2"], 4)

        XCTAssertEqual(solution.stringCompression(&case1), case1Result.1)
        XCTAssertEqual(case1, case1Result.0)

        XCTAssertEqual(solution.stringCompression(&case2), case2Result.1)
        XCTAssertEqual(case2, case2Result.0)

        XCTAssertEqual(solution.stringCompression(&case3), case3Result.1)
        XCTAssertEqual(case3, case3Result.0)
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
        let _cases = _SearchInBinarySearchTree()
        let case1 = _cases.case1
        let case2 = _cases.case2
        let case3 = _cases.case3
        let case4 = _cases.case4
        let case5 = _cases.case5

        let case1Result = _cases.case1Result
        let case2Result = _cases.case2Result
        let case3Result = _cases.case3Result
        let case4Result = _cases.case4Result
        let case5Result = _cases.case5Result

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
        let _cases = _MinCostClimbingStairs()
        let case1 = _cases.case1
        let case2 = _cases.case2
        let case3 = _cases.case3

        let case1Result = 15
        let case2Result = 6
        let case3Result = 209040

        XCTAssertEqual(solution.minCostClimbingStairs(case1), case1Result)
        XCTAssertEqual(solution.minCostClimbingStairs(case2), case2Result)
        XCTAssertEqual(solution.minCostClimbingStairs(case3), case3Result)
    }

    // MARK: - 872. Leaf-Similar Trees

    func testLeafSimilarTrees() throws {
        let _cases = _LeafSimilarTrees()
        let case1_1 = _cases.case1_1
        let case1_2 = _cases.case1_2

        let case2_1 = _cases.case2_1
        let case2_2 = _cases.case2_2

        let case3_1 = _cases.case3_1
        let case3_2 = _cases.case3_2

        let case4_1 = _cases.case4_1
        let case4_2 = _cases.case4_2

        let case1Result = true
        let case2Result = false
        let case3Result = false
        let case4Result = false
        let case5Result = true

        XCTAssertEqual(solution.leafSimilarTrees(case1_1, case1_2), case1Result)
        XCTAssertEqual(solution.leafSimilarTrees(case2_1, case2_2), case2Result)
        XCTAssertEqual(solution.leafSimilarTrees(case3_1, case3_2), case3Result)
        XCTAssertEqual(solution.leafSimilarTrees(case4_1, case4_2), case4Result)
        XCTAssertEqual(solution.leafSimilarTrees(case3_1, case3_1), case5Result)
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

    // MARK: - 1679. Max Number of K-Sum Pairs

    func testMaxNumberOfKSumPairs() throws {
        let _cases = _MaxNumberOfKSumPairs()
        let case1 = _cases.case1
        let case2 = _cases.case2
        let case3 = _cases.case3
        let case4 = _cases.case4

        let case1Result = 2
        let case2Result = 1
        let case3Result = 0
        let case4Result = 4698

        XCTAssertEqual(solution.maxNumberOfKSumPairs(case1.0, case1.1), case1Result)
        XCTAssertEqual(solution.maxNumberOfKSumPairs(case2.0, case2.1), case2Result)
        XCTAssertEqual(solution.maxNumberOfKSumPairs(case3.0, case3.1), case3Result)
        XCTAssertEqual(solution.maxNumberOfKSumPairs(case4.0, case4.1), case4Result)
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
