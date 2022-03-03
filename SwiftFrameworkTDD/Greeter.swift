//
//  Greeter.swift
//  SwiftFrameworkTDD
//
//  Created by Timothy D Batty on 3/3/22.
//

import Foundation

struct Greeter {
    private let greetingTimes: [(from: Int, greeting: String)] = [
        (0, "Good evening."),
        (5, "Good morning."),
        (12, "Good afternoon."),
        (17, "Good evening.")
    ]
    
    init(name: String) {
        
    }
    
    func greet(time: Date) -> String {
        let theHour = hour(for: time)
        if theHour < 5 {
            return greetingTimes[0].greeting
        }
        if theHour >= 5 && theHour < 12 {
            return greetingTimes[1].greeting
        }
        if theHour >= 12 && theHour < 17 {
            return greetingTimes[2].greeting
        }
        if theHour >= 17 {
            return greetingTimes[3].greeting
        }
        return ""
    }
    
    fileprivate func hour(for time: Date) -> Int {
        let components = Calendar.current.dateComponents([.hour], from: time)
        return components.hour ?? 0
    }
}
