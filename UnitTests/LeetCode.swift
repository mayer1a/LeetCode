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
        let nnCycle = ListNode(5)
        let nCycle = ListNode(4, nnCycle)
        let sCycle = ListNode(3, nCycle)
        nnCycle.next = sCycle
        let case1: ListNode? = ListNode(1, ListNode(2, sCycle))

        let case1Result = 3

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
        let case1 = "abccccdd"
        let case2 = "a"
        let case3 = "aaaaabccccddd"
        let case4 = """
            civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth
            """

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
        let case1 = Node(1, children: [
            Node(3, children: [
                Node(5), Node(6)
            ]),
            Node(2),
            Node(4)
        ])
        let case2 = Node(1, children: [
            Node(2),
            Node(3, children: [
                Node(6),
                Node(7, children: [
                    Node(11, children: [
                        Node(14)
                    ])
                ])
            ]),
            Node(4, children: [
                Node(8, children: [
                    Node(12)
                ])
            ]),
            Node(5, children: [
                Node(9, children: [
                    Node(13)
                ]),
                Node(10)
            ]),
        ])

        let case1Result = [1, 3, 5, 6, 2, 4]
        let case2Result = [1, 2, 3, 6, 7, 11, 14, 4, 8, 12, 5, 9, 13, 10]

        XCTAssertEqual(solution.treePreorderTraversal(case1), case1Result)
        XCTAssertEqual(solution.treePreorderTraversal(case1, iterative: false), case1Result)

        XCTAssertEqual(solution.treePreorderTraversal(case2), case2Result)
        XCTAssertEqual(solution.treePreorderTraversal(case2, iterative: false), case2Result)
    }

}
