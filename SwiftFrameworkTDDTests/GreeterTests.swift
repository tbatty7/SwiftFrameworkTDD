@testable import SwiftFrameworkTDD
import XCTest

final class GreeterTests: XCTestCase {
    
    func test_greet_with1159am_shouldSayGoodMorning() throws {
        let greeter = Greeter(name: "")
        
        let result = greeter.greet(time: date(hour: 11, minute: 59))
        
        XCTAssertEqual(result, "Good morning.")
    }
    
    func test_greet_with1200pm_shouldSayGoodAfternoon() {
        let greeter = Greeter(name: "")
        
        let result = greeter.greet(time: date(hour: 12, minute: 00))
        
        XCTAssertEqual(result, "Good afternoon.")
    }
    
    private func date(hour: Int, minute: Int) -> Date {
        let components = DateComponents(calendar: Calendar.current, hour: hour, minute: minute)
        return components.date!
    }
}
