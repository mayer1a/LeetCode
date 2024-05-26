//
//  BenchTimer.swift
//  LeetCode
//
//  Created by Artem Mayer on 21.05.2024.
//

import Foundation
import CoreFoundation

// MARK: - Time tracker

final class BenchTimer {

    func checkSpentTime(for task: () -> Void) {
        checkSpentTimeV1Algorithm(for: task)
    }

    private func checkSpentTimeV1Algorithm(for task: () -> Void) {
        let timer = ParkBenchTimer()
        task()
        let duration = timer.stop()
        formatPrint(duration)
    }

    private func formatPrint(_ spentTime: Double) {
        let cel = Int64(spentTime.rounded(.down))
        let dro = Int64(spentTime * 100000000000000000)
        let duration = Duration(secondsComponent: cel, attosecondsComponent: dro)
            .formatted(.units(allowed: [.seconds, .milliseconds],
                              width: .wide,
                              fractionalPart: .init(lengthLimits: 1...3)))
        print("|------------------------------------------------------------------")
        print("| The task took [\(duration)] OR [\(spentTime)] seconds.")
        print("|------------------------------------------------------------------")
    }

}

final class ParkBenchTimer {

    let startTime: CFAbsoluteTime
    var endTime: CFAbsoluteTime?

    init() {
        startTime = CFAbsoluteTimeGetCurrent()
    }

    func stop() -> CFAbsoluteTime {
        endTime = CFAbsoluteTimeGetCurrent()

        return duration!
    }

    var duration: CFAbsoluteTime? {
        if let endTime = endTime {
            return endTime - startTime
        } else {
            return nil
        }
    }

}
