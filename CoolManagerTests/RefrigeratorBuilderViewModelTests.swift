import XCTest
@testable import CoolManager
final class RefrigeratorBuilderViewModelTests: XCTestCase {
    
    func testBuildRefrigerator_DefaultState_ShouldReturnRefrigerator() {
        let viewModel = RefrigeratorBuilderViewModel()
        
        let expectedCompressorState = true
        let expectedLightState = true
        let expectedResistanceState = true
        let expectedDoorOpenState = false
        XCTAssertEqual(viewModel.compressorStatus(), expectedCompressorState)
        XCTAssertEqual(viewModel.lightStatus(), expectedLightState)
        XCTAssertEqual(viewModel.resistenceStatus(), expectedResistanceState)
        XCTAssertEqual(viewModel.isDoorOpen(), expectedDoorOpenState)
    }
    
    func testSetNormalState_ShouldSetRefrigeratorStateToNormalState() {
        
        let viewModel = RefrigeratorBuilderViewModel()
        XCTAssertEqual(viewModel.nameState(), "Normal State")
    }
    
    func testSetEcoState_ShouldSetRefrigeratorStateToEcoState() {
        /*// Arrange
        let viewModel = RefrigeratorBuilderViewModel()
        
        // Act
        viewModel.setEcoState()
        let refrigerator = viewModel.buildRefrigerator()
        
        // Assert
        XCTAssertEqual(refrigerator.currentStateName(), "Eco State")
         */
    }
}
