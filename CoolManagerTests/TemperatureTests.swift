import XCTest
@testable import CoolManager
class TemperatureTests: XCTestCase {
    
    func testTemperatureConversion() {
        // Arrange
        let temperature = Temperature(value: 32.0, unit: .celsius)
        
        // Act
        let convertedTemperature = temperature.converted(to: .fahrenheit)
        
        // Assert
        XCTAssertEqual(convertedTemperature.value, 89.6, accuracy: 0.1)
        XCTAssertEqual(convertedTemperature.unit, .fahrenheit)
    }
    
    func testTemperatureHashing() {
        // Arrange
        let temperature1 = Temperature(value: 25.0, unit: .celsius)
        let temperature2 = Temperature(value: 25.0, unit: .celsius)
        let temperature3 = Temperature(value: 32.0, unit: .fahrenheit)
        
        // Act
        let hash1 = temperature1.hashValue
        let hash2 = temperature2.hashValue
        let hash3 = temperature3.hashValue
        
        // Assert
        XCTAssertEqual(hash1, hash2)
        XCTAssertNotEqual(hash1, hash3)
    }
    
    func testTemperatureStringValue() {
        // Arrange
        let temperature = Temperature(value: 20.5, unit: .celsius)
        
        // Act
        let stringValue = temperature.stringValue
        
        // Assert
        XCTAssertEqual(stringValue, "20.5 °C")
    }
    
}
