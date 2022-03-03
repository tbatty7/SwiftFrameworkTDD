//
//  Greeter.swift
//  SwiftFrameworkTDD
//
//  Created by Timothy D Batty on 3/3/22.
//

import Foundation

struct Greeter {
    private let name: String
    private let greetingTimes: [(from: Int, greeting: String)] = [
        (0, "Good evening"),
        (5, "Good morning"),
        (12, "Good afternoon"),
        (17, "Good evening"),
        (24, "SENTINEL")
    ]
    
    init(name: String) {
        self.name = name
    }
    
    private func greeting(time: Date) -> String {
        let theHour = hour(for: time)
        for (index, greetingTime) in greetingTimes.enumerated() {
            if theHour >= greetingTime.from && theHour < greetingTimes[index + 1].from {
                return greetingTime.greeting
            }
        }
        return ""
    }
    
    func greet(time: Date) -> String {
        let hello = greeting(time: time)
        if name.isEmpty {
            return hello + "."
        } else {
            return "\(hello), \(name)."
        }
    }
    
    fileprivate func hour(for time: Date) -> Int {
        let components = Calendar.current.dateComponents([.hour], from: time)
        return components.hour ?? 0
    }
}
