//
//  NumberOfRecentCalls.swift
//  LeetCode
//
//  Created by Artem Mayer on 29.05.2024.
//

import Foundation

// MARK: - 933. Number of Recent Calls

/// You have a RecentCounter class which counts the number of recent requests within a certain time frame.
///
/// Implement the RecentCounter class:
///
/// RecentCounter() Initializes the counter with zero recent requests.
/// int ping(int t) Adds a new request at time t, where t represents some time in milliseconds, and returns the number of requests that has happened in the past 3000 milliseconds (including the new request). Specifically, return the number of requests that have happened in the inclusive range [t - 3000, t].
/// It is guaranteed that every call to ping uses a strictly larger value of t than the previous call.
///
///
/// ** Example 1: **
/// ```
/// Input
/// ["RecentCounter", "ping", "ping", "ping", "ping"]
/// [[], [1], [100], [3001], [3002]]
/// Output
/// [null, 1, 2, 3, 3]
///
/// Explanation
/// RecentCounter recentCounter = new RecentCounter();
/// recentCounter.ping(1);     // requests = [1], range is [-2999,1], return 1
/// recentCounter.ping(100);   // requests = [1, 100], range is [-2900,100], return 2
/// recentCounter.ping(3001);  // requests = [1, 100, 3001], range is [1,3001], return 3
/// recentCounter.ping(3002);  // requests = [1, 100, 3001, 3002], range is [2,3002], return 3
/// ```
///
/// ** Constraints: **
/// ```
/// 1 <= t <= 109
/// Each test case will call ping with strictly increasing values of t.
/// At most 104 calls will be made to ping.
// ```
final class NumberOfRecentCalls_Solution {

    static let shared = NumberOfRecentCalls_Solution()

    private var recentCounter: RecentCounter {
        get {
            if _recentCounter == nil {
                _recentCounter = .init()
            }

            return _recentCounter!
        }
    }

    private var _recentCounter: RecentCounter?

    private init() {}

    func ping(_ t: Int) -> Int {
        recentCounter.ping(t)
    }

}

final class RecentCounter {

    private var elements: [Int]

    init() {
       elements = []
    }

    func ping(_ t: Int) -> Int {
        enqueue(t)

        while (head ?? Int.min) < t - 3000 {
            dequeue()
        }

        return elements.count
    }

    private func enqueue(_ value: Int) {
        elements.append(value)
    }

    @discardableResult
    private func dequeue() -> Int? {
        !elements.isEmpty ? elements.removeFirst() : nil
    }

    private var head: Int? {
        elements.first
    }

}
