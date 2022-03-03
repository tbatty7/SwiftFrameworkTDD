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
        if hour(for: time) >= 12 && hour(for: time) <= 16 {
            return "Good afternoon."
        } else if hour(for: time) >= 17 {
            return "Good evening."
        }
        return "Good morning."
    }
    
    fileprivate func hour(for time: Date) -> Int {
        let components = Calendar.current.dateComponents([.hour], from: time)
        return components.hour ?? 0
    }
}
