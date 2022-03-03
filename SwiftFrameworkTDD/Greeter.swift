//
//  Greeter.swift
//  SwiftFrameworkTDD
//
//  Created by Timothy D Batty on 3/3/22.
//

import Foundation

struct Greeter {
    init(name: String) {
        
    }
    
    func greet(time: Date) -> String {
        let theHour = hour(for: time)
        if theHour >= 12 && theHour <= 16 {
            return "Good afternoon."
        } else if theHour >= 17 {
            return "Good evening."
        }
        return "Good morning."
    }
    
    fileprivate func hour(for time: Date) -> Int {
        let components = Calendar.current.dateComponents([.hour], from: time)
        return components.hour ?? 0
    }
}
