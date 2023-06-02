import XCTest
@testable import CoolManager
final class RefrigeratorTests: XCTestCase {
    let refrigerador = try!NormalRefrigeratorFactory().create()
    let initialStateExpected    = "SETPOINT-42--26.png"
    let setPointExpected        = Temperature(value: 20, unit: .celsius, interval: 0.5)
    let TemperatureMaxExpected  = Temperature(value: 35, unit: .celsius, interval: 0.5)
    let TemperatureMinExpected  = Temperature(value: -5, unit: .celsius, interval: 0.5)
    let currentTemperature      = Temperature(value: 10, unit: .celsius, interval: 0.5)
    let expectedCompressorState = true
    let expectedLightState      = true
    let expectedResistanceState = true
    let expectedDoorOpenState   = false
    
    
    func test_RefrigeratorInitialized_ShouldHaveDefaultValues() {
        let setPoint = refrigerador.setPoint
        XCTAssertEqual(refrigerador.compressor.isOn, expectedCompressorState)
        XCTAssertEqual(refrigerador.light.isOn,      expectedLightState)
        XCTAssertEqual(refrigerador.resistance.isOn, expectedResistanceState)
        XCTAssertEqual(refrigerador.door.isOpen,       expectedDoorOpenState)
        XCTAssertEqual(setPoint.temperatureSetPoint,  setPointExpected)
        XCTAssertEqual(setPoint.temperature,          currentTemperature)
        XCTAssertEqual(setPoint.maxTemperature,       TemperatureMaxExpected)
        XCTAssertEqual(setPoint.minTemperature,       TemperatureMinExpected)
    }
    
}
