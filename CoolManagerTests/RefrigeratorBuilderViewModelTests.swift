import XCTest
@testable import CoolManager
final class RefrigeratorNormalViewModelTests: XCTestCase {
    var viewModel:RefrigeratorBuilderViewModel = RefrigeratorBuilderViewModel(NormalRefrigeratorFactory().create())
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
        let setPoint = viewModel.setPoint()
        XCTAssertEqual(viewModel.compressorStatus(), expectedCompressorState)
        XCTAssertEqual(viewModel.lightStatus(),      expectedLightState)
        XCTAssertEqual(viewModel.resistenceStatus(), expectedResistanceState)
        XCTAssertEqual(viewModel.isDoorOpen(),       expectedDoorOpenState)
        XCTAssertEqual(setPoint.temperatureSetPoint,  setPointExpected)
        XCTAssertEqual(setPoint.temperature,          currentTemperature)
        XCTAssertEqual(setPoint.maxTemperature,       TemperatureMaxExpected)
        XCTAssertEqual(setPoint.minTemperature,       TemperatureMinExpected)
    }
    
    func test_SetPointIncreasedToMaximum_ShouldDisplayCorrectIcon(){
        let finalStateExpected = "SETPOINT-42--42.png"
        XCTAssertEqual(viewModel.getIconName(), initialStateExpected)
        for _ in 0..<5 {
            viewModel.upScaleSetPoint()
        }
        XCTAssertEqual(viewModel.getIconName(), finalStateExpected)
    }
    
    func test_SetPointDecreasedToMinimum_ShouldDisplayCorrectIcon(){
        let finalStateExpected = "SETPOINT-42--0.png"
        XCTAssertEqual(viewModel.getIconName(), initialStateExpected)
        for _ in 0..<5 {
            viewModel.downScaleSetPoint()
        }
        XCTAssertEqual(viewModel.getIconName(), finalStateExpected)
    }
    
}
