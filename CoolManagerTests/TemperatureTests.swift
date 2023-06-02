import XCTest
@testable import CoolManager
final class TemperatureTests: XCTestCase {
    let temperature = Temperature(value: 32.0, unit: .celsius, interval: 0.5)
    
    func test_TemperatureConversion() {
        let convertedTemperature = temperature.converted(to: .fahrenheit)
        XCTAssertEqual(convertedTemperature.value, 89.6, accuracy: 0.1)
        XCTAssertEqual(convertedTemperature.unit, .fahrenheit)
    }
    
    func test_TemperatureHashing() {
        let temperature1 = temperature
        let temperature2 = temperature
        let temperature3 = Temperature(value: 25.0, unit: .fahrenheit, interval: 0.5)
        
        let hash1 = temperature1.hashValue
        let hash2 = temperature2.hashValue
        let hash3 = temperature3.hashValue
        
        XCTAssertEqual(hash1, hash2)
        XCTAssertNotEqual(hash1, hash3)
    }
    
    func test_TemperatureStringValue() {
        let stringValue = temperature.stringValue
        XCTAssertEqual(stringValue, "32.0 °C")
    }
    
}
