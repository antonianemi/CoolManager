import XCTest
@testable import CoolManager
final class RefrigeratorTests: XCTestCase {
    
    func testTemperatureConversion() {
        // Arrange
        let temperature = Temperature(value: 32.0, unit: .celsius, interval: 0.5)
        
        // Act
        let convertedTemperature = temperature.converted(to: .fahrenheit)
        
        // Assert
        XCTAssertEqual(convertedTemperature.value, 89.6, accuracy: 0.1)
        XCTAssertEqual(convertedTemperature.unit, .fahrenheit)
    }
    
}
