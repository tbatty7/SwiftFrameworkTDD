@testable import SwiftFrameworkTDD
import XCTest

final class GreeterTests: XCTestCase {
    
    func test_greet_with1159am_shouldSayGoodMorning() throws {
        let greeter = Greeter(name: "")       
        let time = date(hour: 11, minute: 59)
        
        let result: String = greeter.greet(time: time)
        
        XCTAssertEqual(result, "Good morning.")
    }
    
    private func date(hour: Int, minute: Int) -> Date {
        let components = DateComponents(calendar: Calendar.current, hour: hour, minute: minute)
        return components.date!
    }
}
