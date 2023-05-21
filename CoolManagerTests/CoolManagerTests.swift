import XCTest
@testable import CoolManager
final class CoolManagerTests: XCTestCase {
    
    func testProcessTemperature_WithValidTemperature_ShouldUpdateStates() {
        // Arrange
        let refrigerator = RefrigeratorBuilder()
            .setNormalState()
            .build()
        
        let expectedCompressorState = true
        let expectedLightState = true
        let expectedResistanceState = true
        let expectedFanState = true
        
        XCTAssertEqual(refrigerator.compressor?.isActive, expectedCompressorState)
        XCTAssertEqual(refrigerator.light?.isActive, expectedLightState)
        XCTAssertEqual(refrigerator.resistance?.isActive, expectedResistanceState)
        XCTAssertEqual(refrigerator.fan?.isActive, expectedFanState)
    }
    
    func testProcessTemperature_comingFromNormalToEcoState_ShouldUpdateStates() {
        // Arrange
        var refrigerator = RefrigeratorBuilder()
            .setNormalState()
            .build()
        
        var expectedCompressorState = true
        var expectedLightState = true
        var expectedResistanceState = true
        var expectedDoorOpenState = false
        
        XCTAssertEqual(refrigerator.compressor?.isActive, expectedCompressorState)
        XCTAssertEqual(refrigerator.light?.isActive, expectedLightState)
        XCTAssertEqual(refrigerator.resistance?.isActive, expectedResistanceState)
        XCTAssertEqual(refrigerator.door?.isOpen, expectedDoorOpenState)
        
        refrigerator = RefrigeratorBuilder()
            .setEcoState()
            .build()
        
         expectedCompressorState = false
         expectedLightState = false
         expectedResistanceState = false
         expectedDoorOpenState = false
        
        XCTAssertEqual(refrigerator.compressor?.isActive, expectedCompressorState)
        XCTAssertEqual(refrigerator.light?.isActive, expectedLightState)
        XCTAssertEqual(refrigerator.resistance?.isActive, expectedResistanceState)
        XCTAssertEqual(refrigerator.door?.isOpen, expectedDoorOpenState)
        
    }
    
    
    
    func testCurrentTemperatureState_WithoutTemperatureSet_ShouldReturnDefaultTemperature() {
        // Arrange
        let refrigerator = RefrigeratorBuilder().build()
        let expectedTemperature = Temperature(value: 0, unit: .celsius)
        
        // Act
        let currentTemperatureState = refrigerator.currentTemperatureState
        
        // Assert
        XCTAssertEqual(currentTemperatureState, expectedTemperature)
    }
        
    func testCurrentTemperatureState_WithTemperatureSet_ShouldReturnSetTemperature() {
        // Arrange
        let temperature = Temperature(value: 20, unit: .celsius)
        let refrigerator = Refrigerator()
        let expectedTemperature = temperature
        
        // Act
        refrigerator.setTemperature(temperature)
        let currentTemperatureState = refrigerator.currentTemperatureState
        
        // Assert
        XCTAssertEqual(currentTemperatureState, expectedTemperature)
    }
}
