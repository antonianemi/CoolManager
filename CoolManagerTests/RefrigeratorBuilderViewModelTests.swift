import XCTest
@testable import CoolManager
final class RefrigeratorNormalViewModelTests: XCTestCase {
    var viewModel:RefrigeratorBuilderViewModel! = RefrigeratorBuilderViewModel(try! NormalRefrigeratorFactory().create())
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
        let setPoint = viewModel!.setPoint()
        XCTAssertEqual(viewModel!.compressorStatus(), expectedCompressorState)
        XCTAssertEqual(viewModel!.lightStatus(),      expectedLightState)
        XCTAssertEqual(viewModel!.resistenceStatus(), expectedResistanceState)
        XCTAssertEqual(viewModel!.isDoorOpen(),       expectedDoorOpenState)
        XCTAssertEqual(setPoint.temperatureSetPoint,  setPointExpected)
        XCTAssertEqual(setPoint.temperature,          currentTemperature)
        XCTAssertEqual(setPoint.maxTemperature,       TemperatureMaxExpected)
        XCTAssertEqual(setPoint.minTemperature,       TemperatureMinExpected)
    }
    
    func test_SetPointIncreasedToMaximum_ShouldDisplayCorrectIcon(){
        let finalStateExpected = "SETPOINT-42--42.png"
        XCTAssertEqual(viewModel!.getIconName(), initialStateExpected)
        for _ in 0..<5 {
            viewModel!.upScaleSetPoint()
        }
        XCTAssertEqual(viewModel!.getIconName(), finalStateExpected)
    }
    
    func test_SetPointDecreasedToMinimum_ShouldDisplayCorrectIcon(){
        let finalStateExpected = "SETPOINT-42--0.png"
        XCTAssertEqual(viewModel!.getIconName(), initialStateExpected)
        for _ in 0..<5 {
            viewModel!.downScaleSetPoint()
        }
        XCTAssertEqual(viewModel!.getIconName(), finalStateExpected)
    }
    
}
