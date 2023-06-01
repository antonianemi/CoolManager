import XCTest
@testable import CoolManager
final class CoolManagerTests: XCTestCase {
    
    func testProcessTemperature_WithValidTemperature_ShouldUpdateStates() {
        let refrigerator = try? NormalRefrigeratorFactory().create()
        let expectedCompressorState = true
        let expectedLightState = true
        let expectedResistanceState = true
        let expectedFanState = true
        
        XCTAssertEqual(refrigerator!.compressor.isActive, expectedCompressorState)
        XCTAssertEqual(refrigerator!.light.isActive, expectedLightState)
        XCTAssertEqual(refrigerator!.resistance.isActive, expectedResistanceState)
        XCTAssertEqual(refrigerator!.fan.isActive, expectedFanState)
    }
    
    func testProcessTemperature_comingFromNormalToEcoState_ShouldUpdateStates() {
        /*
        var refrigerator = RefrigeratorBuilder().build()
        refrigerator.setState(.normal)
        var expectedCompressorState = true
        var expectedLightState = true
        var expectedResistanceState = true
        var expectedDoorOpenState = false
        
        XCTAssertEqual(refrigerator.compressor.isActive, expectedCompressorState)
        XCTAssertEqual(refrigerator.light.isActive, expectedLightState)
        XCTAssertEqual(refrigerator.resistance.isActive, expectedResistanceState)
        XCTAssertEqual(refrigerator.door.isOpen, expectedDoorOpenState)
        
        refrigerator = RefrigeratorBuilder().build()
        refrigerator.setState(.eco)
        
        expectedCompressorState = false
        expectedLightState = false
        expectedResistanceState = false
        expectedDoorOpenState = false
        
        XCTAssertEqual(refrigerator.compressor.isActive, expectedCompressorState)
        XCTAssertEqual(refrigerator.light.isActive, expectedLightState)
        XCTAssertEqual(refrigerator.resistance.isActive, expectedResistanceState)
        XCTAssertEqual(refrigerator.door.isOpen, expectedDoorOpenState)
         */
    }
    
    
    func testCurrentTemperatureState_ShouldReturnDefaultTemperature_Celsius() {
        /*
        let refrigerator = RefrigeratorBuilder().build()
        let expectedTemperature = Temperature(value: 0, unit: .celsius)
        XCTAssertEqual(refrigerator.currentTemperatureStatus, expectedTemperature)
         */
    }
        
    func testCurrentTemperature_ShouldReturnTemperature_Celsius() {
        let refrigerator = try? NormalRefrigeratorFactory().create()
        let temperature = Temperature(value: 10, unit: .celsius, interval: 0.5)
        let expectedTemperature = temperature
        XCTAssertEqual(refrigerator!.currentTemperatureStatus, expectedTemperature)
    }
    
    func test_Normal_InitializeRefrigerator(){
        let refrigerator = try? NormalRefrigeratorFactory().create()
        
        let expectedTemperature = Temperature(value: 35, unit: .celsius, interval: 0.5)
        let expectedCompressorState = false
        let expectedLightState = false
        let expectedResistanceState = false
        let expectedDoorOpenState = false
        
        XCTAssertEqual(refrigerator!.compressor.isActive, expectedCompressorState)
        XCTAssertEqual(refrigerator!.light.isActive, expectedLightState)
        XCTAssertEqual(refrigerator!.resistance.isActive, expectedResistanceState)
        XCTAssertEqual(refrigerator!.door.isOpen, expectedDoorOpenState)
        XCTAssertEqual(refrigerator!.currentTemperatureStatus, expectedTemperature)
    }
    
}
