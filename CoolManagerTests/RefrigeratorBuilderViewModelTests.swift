import XCTest
@testable import CoolManager
final class RefrigeratorBuilderViewModelTests: XCTestCase {
    
    func testBuildRefrigerator_DefaultState_ShouldReturnRefrigeratorWithNormalState() {
        // Arrange
        let viewModel = RefrigeratorBuilderViewModel()
        
        var expectedCompressorState = true
        var expectedLightState = true
        var expectedResistanceState = true
        var expectedDoorOpenState = false
        
        XCTAssertEqual(viewModel.compressorStatus(), expectedCompressorState)
        XCTAssertEqual(viewModel.lightStatus(), expectedLightState)
        XCTAssertEqual(viewModel.resistenceStatus(), expectedResistanceState)
        XCTAssertEqual(viewModel.isDoorOpen(), expectedDoorOpenState)
    }
    
    func testSetNormalState_ShouldSetRefrigeratorStateToNormalState() {
        /*// Arrange
        let viewModel = RefrigeratorBuilderViewModel()
        
        // Act
        viewModel.setNormalState()
        let refrigerator = viewModel.buildRefrigerator()
        
        // Assert
        XCTAssertEqual(refrigerator.currentStateName(), "Normal State")
         */
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
