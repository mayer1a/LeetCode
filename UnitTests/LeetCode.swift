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

}
