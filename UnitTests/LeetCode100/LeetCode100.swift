//
//  UnitTests.swift
//  UnitTests
//
//  Created by Artem Mayer on 26.08.22.
//

import XCTest
@testable import LeetCode100

final class UnitTests: XCTestCase {

    var solution: Solution!

    override func setUpWithError() throws {
        try super.setUpWithError()

        solution = Solution()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        solution = nil
        try super.tearDownWithError()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: - 21. Merge Two Sorted Lists

    func testMergeTwoSortedLists() throws {
        let _cases = _MergeTwoSortedLists()
        let case1 = _cases.case1
        let case2 = _cases.case2
        let case3 = _cases.case3
        let case4 = _cases.case4

        let case1Result = _cases.case1Result
        let case2Result = _cases.case2Result
        let case3Result = _cases.case3Result
        let case4Result = _cases.case4Result

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
        let _cases = _BinaryTreeLevelOrderTraversal()
        let case1 = _cases.case1

        let case1Result = _cases.case1Result

        XCTAssertEqual(solution.binaryTreeLevelOrderTraversal(case1), case1Result)

        XCTAssertEqual(solution.binaryTreeLevelOrderTraversal(case1, iterative: false), case1Result)
    }
    
    // MARK: - 121. Best Time to Buy and Sell Stock

    func testBestTimeToBuyAndSellStock() throws {
        let case1 = [7,1,5,3,6,4]
        let case2 = [7,6,4,3,1]

        let case1Result = 5
        let case2Result = 0

        XCTAssertEqual(solution.bestTimeToBuyAndSellStock(case1), case1Result)
        XCTAssertEqual(solution.bestTimeToBuyAndSellStock(case2), case2Result)
    }

    // MARK: - 142. Linked List Cycle II

    func testLinkedListCycleII() throws {
        let _cases = _LinkedListCycleII()
        let case1 = _cases.case1

        let case1Result = _cases.case1Result

        XCTAssertEqual(solution.linkedListCycleII(case1)?.val, case1Result)
    }

    // MARK: - 205. Isomorphic Strings

    func testIsomorphicString() throws {
        let case1 = ("egg", "add")
        let case2 = ("foo", "bar")
        let case3 = ("paper", "title")
        let case4 = ("a", "a")
        let case5 = ("badc", "baba")

        let case1Result = true
        let case2Result = false
        let case3Result = true
        let case4Result = true
        let case5Result = false

        XCTAssertEqual(solution.isomorphicString(case1.0, case1.1), case1Result)
        XCTAssertEqual(solution.isomorphicString(case2.0, case2.1), case2Result)
        XCTAssertEqual(solution.isomorphicString(case3.0, case3.1), case3Result)
        XCTAssertEqual(solution.isomorphicString(case4.0, case4.1), case4Result)
        XCTAssertEqual(solution.isomorphicString(case5.0, case5.1), case5Result)

        XCTAssertEqual(solution.isomorphicString(case1.0, case1.1, alternativeSolution: true),
                       case1Result)
        XCTAssertEqual(solution.isomorphicString(case2.0, case2.1, alternativeSolution: true),
                       case2Result)
        XCTAssertEqual(solution.isomorphicString(case3.0, case3.1, alternativeSolution: true),
                       case3Result)
        XCTAssertEqual(solution.isomorphicString(case4.0, case4.1, alternativeSolution: true),
                       case4Result)
        XCTAssertEqual(solution.isomorphicString(case5.0, case5.1, alternativeSolution: true),
                       case5Result)
    }

    // MARK: - 278. First Bad Version

    func testFirstBadVersion() throws {
        let case1 = 8

        let case1Result = 5

        XCTAssertEqual(solution.firstBadVersion(case1), case1Result)
    }

    // MARK: - 409. Longest Palindrome

    func testLongestPalindrome() throws {
        let _cases = _LongestPalindrome()
        let case1 = _cases.case1
        let case2 = _cases.case2
        let case3 = _cases.case3
        let case4 = _cases.case4

        let case1Result = 7
        let case2Result = 1
        let case3Result = 11
        let case4Result = 983

        XCTAssertEqual(solution.longestPalindrome(case1), case1Result)
        XCTAssertEqual(solution.longestPalindrome(case2), case2Result)
        XCTAssertEqual(solution.longestPalindrome(case3), case3Result)
        XCTAssertEqual(solution.longestPalindrome(case4), case4Result)
    }

    // MARK: - 589. N-ary Tree Preorder Traversal

    func testTreePreorderTraversal() throws {
        let _cases = _TreePreorderTraversal()
        let case1 = _cases.case1
        let case2 = _cases.case2

        let case1Result = _cases.case1Result
        let case2Result = _cases.case2Result

        XCTAssertEqual(solution.treePreorderTraversal(case1), case1Result)
        XCTAssertEqual(solution.treePreorderTraversal(case1, iterative: false), case1Result)

        XCTAssertEqual(solution.treePreorderTraversal(case2), case2Result)
        XCTAssertEqual(solution.treePreorderTraversal(case2, iterative: false), case2Result)
    }

    // MARK: - 648. Replace Words

    func testReplaceWords() throws {
        let _cases = _ReplaceWords()
        let case1 = _cases.case1
        let case2 = _cases.case2
        let case3 = _cases.case3
        let case4 = _cases.case4

        let case1Result = _cases.case1Result
        let case2Result = _cases.case2Result
        let case3Result = _cases.case3Result
        let case4Result = _cases.case4Result

        XCTAssertEqual(solution.replaceWords(case1.0, case1.1), case1Result)
        XCTAssertEqual(solution.replaceWords(case2.0, case2.1), case2Result)
        XCTAssertEqual(solution.replaceWords(case3.0, case3.1), case3Result)
        XCTAssertEqual(solution.replaceWords(case4.0, case4.1), case4Result)
    }

    // MARK: - 704. Binary Search

    func testBinarySearch() throws {
        let case1 = ([-1,0,3,5,9,12], 9)
        let case2 = ([-1,0,3,5,9,12], 2)
        let case3 = ([-2, -1, 0, 2, 3, 5, 7, 9], 9)
        let case4 = ([-2, -1, 0, 2, 3, 5, 7, 9], 7)
        let case5 = ([-2, -1, 0, 2, 3, 5, 7, 9], -1)
        let case6 = ([-2, -1, 0, 2, 3, 5, 7, 9], -2)

        let case1Result = 4
        let case2Result = -1
        let case3Result = 7
        let case4Result = 6
        let case5Result = 1
        let case6Result = 0

        XCTAssertEqual(solution.binarySearch(case1.0, case1.1), case1Result)
        XCTAssertEqual(solution.binarySearch(case2.0, case2.1), case2Result)
        XCTAssertEqual(solution.binarySearch(case3.0, case3.1), case3Result)
        XCTAssertEqual(solution.binarySearch(case4.0, case4.1), case4Result)
        XCTAssertEqual(solution.binarySearch(case5.0, case5.1), case5Result)
        XCTAssertEqual(solution.binarySearch(case6.0, case6.1), case6Result)
    }

    // MARK: - 849. Maximize Distance to Closest Person

    func testMaximizeDistanceToClosestPerson() throws {
        let case1 = [1,0,0,0,1,0,1]
        let case2 = [1,0,0,0]
        let case3 = [1,0,0,1]
        let case4 = [1,0,1]

        let case1Result = 2
        let case2Result = 3
        let case3Result = 1
        let case4Result = 1

        XCTAssertEqual(solution.maximizeDistanceToClosestPerson(case1), case1Result)
        XCTAssertEqual(solution.maximizeDistanceToClosestPerson(case2), case2Result)
        XCTAssertEqual(solution.maximizeDistanceToClosestPerson(case3), case3Result)
        XCTAssertEqual(solution.maximizeDistanceToClosestPerson(case4), case4Result)
    }

    // MARK: - 876. Middle of the Linked List

    func testMiddleNodeOfTheLinkedList() throws {
        let case1 = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))
        let case2 = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, ListNode(6))))))
        let case3 = ListNode(5)

        let case1Result = ListNode(3, ListNode(4, ListNode(5)))
        let case2Result = ListNode(4, ListNode(5, ListNode(6)))
        let case3Result = ListNode(5)

        XCTAssertEqual(solution.middleNodeOfTheLinkedList(case1), case1Result)
        XCTAssertEqual(solution.middleNodeOfTheLinkedList(case2), case2Result)
        XCTAssertEqual(solution.middleNodeOfTheLinkedList(case3), case3Result)
    }

    // MARK: - 949. Largest Time for Given Digits

    func testLargestTimeForGivenDigits() throws {
        let case1 = [1, 2, 3, 4]
        let case2 = [5,5,5,5]
        let case3 = [5,5,2,3]
        let case4 = [1,1,4,3]

        let case1Result = "23:41"
        let case2Result = ""
        let case3Result = "23:55"
        let case4Result = "14:31"

        XCTAssertEqual(solution.largestTimeForGivenDigits(case1), case1Result)
        XCTAssertEqual(solution.largestTimeForGivenDigits(case2), case2Result)
        XCTAssertEqual(solution.largestTimeForGivenDigits(case3), case3Result)
        XCTAssertEqual(solution.largestTimeForGivenDigits(case4), case4Result)
    }

    // MARK: - 1002. Find Common Characters

    func testFindCommonCharacters() throws {
        let case1 = ["bella","label","roller"]
        let case2 = ["cool","lock","cook"]

        let case1Result = ["e","l","l"].sorted()
        let case2Result = ["c","o"].sorted()

        XCTAssertEqual(solution.findCommonCharacters(case1).sorted(), case1Result)
        XCTAssertEqual(solution.findCommonCharacters(case2).sorted(), case2Result)
    }

    //  MARK: - 1051. Height Checker

    func testHeightChecker() throws {
        let case1 = [1, 1, 4, 2, 1, 3]
        let case2 = [5, 1, 2, 3, 4]
        let case3 = [1, 2, 3, 4, 5]

        let case1Result = 3
        let case2Result = 5
        let case3Result = 0

        XCTAssertEqual(solution.heightChecker(case1), case1Result)
        XCTAssertEqual(solution.heightChecker(case2), case2Result)
        XCTAssertEqual(solution.heightChecker(case3), case3Result)
    }

    // MARK: - 1480. Running Sum of 1d Array

    func testRunningSumOf1dArray() throws {
        let case1 = [1, 2, 3, 4]
        let case2 = [1,1,1,1,1]
        let case3 = [3,1,2,10,1]

        let case1Result = [1,3,6,10]
        let case2Result = [1,2,3,4,5]
        let case3Result = [3,4,6,16,17]

        XCTAssertEqual(solution.runningSumOf1dArray(case1), case1Result)
        XCTAssertEqual(solution.runningSumOf1dArray(case2), case2Result)
        XCTAssertEqual(solution.runningSumOf1dArray(case3), case3Result)
    }

}
