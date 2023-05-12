import XCTest
@testable import CoolManager
final class RefrigeratorBuilderViewModelTests: XCTestCase {
    
    func testBuildRefrigerator_DefaultState_ShouldReturnRefrigeratorWithNormalState() {
        // Arrange
        let viewModel = RefrigeratorBuilderViewModel()
        
        // Act
        let refrigerator = viewModel.buildRefrigerator()
        
        // Assert
        XCTAssertEqual(refrigerator.currentStateName(), "Normal State")
    }
    
    func testSetNormalState_ShouldSetRefrigeratorStateToNormalState() {
        // Arrange
        let viewModel = RefrigeratorBuilderViewModel()
        
        // Act
        viewModel.setNormalState()
        let refrigerator = viewModel.buildRefrigerator()
        
        // Assert
        XCTAssertEqual(refrigerator.currentStateName(), "Normal State")
    }
    
    func testSetEcoState_ShouldSetRefrigeratorStateToEcoState() {
        // Arrange
        let viewModel = RefrigeratorBuilderViewModel()
        
        // Act
        viewModel.setEcoState()
        let refrigerator = viewModel.buildRefrigerator()
        
        // Assert
        XCTAssertEqual(refrigerator.currentStateName(), "Eco State")
    }
}
