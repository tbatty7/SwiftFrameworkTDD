@testable import SwiftFrameworkTDD
import XCTest

final class GreeterTests: XCTestCase {

    func test_greet_with1159am_shouldSayGoodMorning() throws {
        let greeter = Greeter(name: "")
        let components = DateComponents(calendar: Calendar.current, hour: 11, minute: 59)
        let time = components.date!
    }
}
