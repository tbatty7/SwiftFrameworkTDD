@testable import SwiftFrameworkTDD
import XCTest

final class GreeterWithoutNameTests: XCTestCase {
    
    func test_greet_with5am_shouldSayGoodMorning() throws {
        let greeter = setupGreeterWithNoName()
        
        let result = greeter.greet(time: date(hour: 5, minute: 00))
        
        XCTAssertEqual(result, "Good morning.")
    }
    
    func test_greet_with8am_shouldSayGoodMorning() throws {
        let greeter = setupGreeterWithNoName()
        
        let result = greeter.greet(time: date(hour: 8, minute: 00))
        
        XCTAssertEqual(result, "Good morning.")
    }
    
    func test_greet_with1159am_shouldSayGoodMorning() throws {
        let greeter = setupGreeterWithNoName()
        
        let result = greeter.greet(time: date(hour: 11, minute: 59))
        
        XCTAssertEqual(result, "Good morning.")
    }
    
    func test_greet_with1200pm_shouldSayGoodAfternoon() {
        let greeter = setupGreeterWithNoName()
        
        let result = greeter.greet(time: date(hour: 12, minute: 00))
        
        XCTAssertEqual(result, "Good afternoon.")
    }
    
    func test_greet_with459pm_shouldSayGoodAfternoon() {
        let greeter = setupGreeterWithNoName()
        
        let result = greeter.greet(time: date(hour: 16, minute: 59))
        
        XCTAssertEqual(result, "Good afternoon.")
    }
    
    func test_greet_with2pm_shouldSayGoodAfternoon() {
        let greeter = setupGreeterWithNoName()
        
        let result = greeter.greet(time: date(hour: 14, minute: 00))
        
        XCTAssertEqual(result, "Good afternoon.")
    }
    
    func test_greet_with5pm_shouldSayGoodEvening() {
        let greeter = setupGreeterWithNoName()
        
        let result = greeter.greet(time: date(hour: 17, minute: 00))
        
        XCTAssertEqual(result, "Good evening.")
    }
    
    func test_greet_with1159pm_shouldSayGoodEvening() {
        let greeter = setupGreeterWithNoName()
        
        let result = greeter.greet(time: date(hour: 23, minute: 59))
        
        XCTAssertEqual(result, "Good evening.")
    }
    
    func test_greet_with7pm_shouldSayGoodEvening() {
        let greeter = setupGreeterWithNoName()
        
        let result = greeter.greet(time: date(hour: 19, minute: 00))
        
        XCTAssertEqual(result, "Good evening.")
    }
    
    func test_greet_with12am_shouldSayGoodEvening() {
        let greeter = setupGreeterWithNoName()
        
        let result = greeter.greet(time: date(hour: 0, minute: 00))
        
        XCTAssertEqual(result, "Good evening.")
    }
    
    func test_greet_with459am_shouldSayGoodEvening() {
        let greeter = setupGreeterWithNoName()
        
        let result = greeter.greet(time: date(hour: 4, minute: 59))
        
        XCTAssertEqual(result, "Good evening.")
    }
    
    func test_greet_with2am_shouldSayGoodEvening() {
        let greeter = setupGreeterWithNoName()
        
        let result = greeter.greet(time: date(hour: 2, minute: 00))
        
        XCTAssertEqual(result, "Good evening.")
    }
    
    
    private func setupGreeterWithNoName() -> Greeter {
        return Greeter(name: "")
    }
}

final class GreeterWithNameTests: XCTestCase {
    
    func test_greetMorning_withAlberto_shouldSayGoodMorningAlberto() {
        let greeter = setupGreeter(name: "Alberto")
        
        let result = greeter.greet(time: date(hour: 8, minute: 00))
        
        XCTAssertEqual(result, "Good morning, Alberto.")
    }
    
    func test_greetAfternoon_withBeryl_shouldSayGoodAfternoonBeryl() {
        let greeter = setupGreeter(name: "Beryl")
        
        let result = greeter.greet(time: date(hour: 13, minute: 00))
        
        XCTAssertEqual(result, "Good afternoon, Beryl.")
    }
    
    private func setupGreeter(name: String) -> Greeter {
        return Greeter(name: name)
    }
}

private func date(hour: Int, minute: Int) -> Date {
    let components = DateComponents(calendar: Calendar.current, hour: hour, minute: minute)
    return components.date!
}
