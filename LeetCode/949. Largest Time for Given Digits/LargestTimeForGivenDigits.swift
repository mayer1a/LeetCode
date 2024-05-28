//
//  LargestTimeForGivenDigits.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation

// MARK: - 949. Largest Time for Given Digits (String, Enumeration, Array)

/// Given an array arr of 4 digits, find the latest 24-hour time that can be made using each digit exactly once.
///
/// 24-hour times are formatted as "HH:MM", where HH is between 00 and 23, and MM is between 00 and 59.
/// The earliest 24-hour time is 00:00, and the latest is 23:59.
/// Return the latest 24-hour time in "HH:MM" format. If no valid time can be made, return an empty string.
///
/// **Example 1:**
/// ```
/// Input: arr = [1,2,3,4]
/// Output: "23:41"
/// Explanation: The valid 24-hour times are:
///  "12:34", "12:43", "13:24", "13:42", "14:23",
///  "14:32", "21:34", "21:43", "23:14", "23:41".
/// Of these times, "23:41" is the latest.
/// ```
///
/// **Example 2:**
/// ```
/// Input: arr = [5,5,5,5]
/// Output: ""
/// Explanation: There are no valid 24-hour times as "55:55" is not valid.
/// ```
///
/// **Constraints:**
/// ```
/// arr.length == 4
/// 0 <= arr[i] <= 9
/// ```
final class LargestTimeForGivenDigits_Solution {

    func largestTimeFromDigits(_ arr: [Int]) -> String {
        var result = ""
        var ind = 0
        for i in 0..<arr.count {
            for j in 0..<arr.count {
                for k in 0..<arr.count {
                    guard i != j, i != k, j != k else { continue }
                    print("\(ind)")
                    ind += 1
                    let hh = "\(arr[i])" + "\(arr[j])"
                    let mm = "\(arr[k])" + "\(arr[6 - i - j - k])"
                    let time = "\(hh):\(mm)"
                    if hh < "24", mm < "60", time > result {
                        result = time
                    }
                }
            }
        }

        return result
    }

}
