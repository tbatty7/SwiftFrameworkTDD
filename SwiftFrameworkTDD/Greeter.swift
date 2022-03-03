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
        let components = Calendar.current.dateComponents([.hour], from: time)
        if components.hour ?? 0 == 12 {
            return "Good afternoon."
        }
        return "Good morning."
    }
}
