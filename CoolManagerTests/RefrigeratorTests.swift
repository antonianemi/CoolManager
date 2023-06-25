import XCTest
@testable import CoolManager
final class RefrigeratorTests: XCTestCase {
    let refrigerador            = try!NormalRefrigeratorFactory().create()
    let initialStateExpected    = "SETPOINT-42--26.png"
    let setPointExpected        = Temperature(20, .celsius, 0.5)
    let TemperatureMaxExpected  = Temperature(35, .celsius, 0.5)
    let TemperatureMinExpected  = Temperature(-5, .celsius, 0.5)
    let currentTemperature      = Temperature(10, .celsius, 0.5)
    let expectedCompressorState = true
    let expectedLightState      = true
    let expectedResistanceState = true
    let expectedDoorOpenState   = false
    
    
    func test_RefrigeratorInitialized_ShouldHaveDefaultValues() {
        let setPoint = refrigerador.setPoint
        XCTAssertEqual(refrigerador.compressor.isOn,  expectedCompressorState)
        XCTAssertEqual(refrigerador.light.isOn,       expectedLightState)
        XCTAssertEqual(refrigerador.resistance.isOn,  expectedResistanceState)
        XCTAssertEqual(refrigerador.door.isOpen,      expectedDoorOpenState)
        XCTAssertEqual(setPoint.temperatureSetPoint,  setPointExpected)
        XCTAssertEqual(setPoint.temperature,          currentTemperature)
        XCTAssertEqual(setPoint.maxTemperature,       TemperatureMaxExpected)
        XCTAssertEqual(setPoint.minTemperature,       TemperatureMinExpected)
    }
    
}
