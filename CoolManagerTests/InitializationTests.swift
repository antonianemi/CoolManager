import XCTest
@testable import CoolManager
final class InitializationTests: XCTestCase {
    
    func test_givenCoolManager_whenInitialized_thenShouldHaveDefaultValues() {
            for scenario in testScenarios() {
                // Arrange
                let coolManager = scenario.coolManager
                let controller = DashBoardController(coolManager)
                
                // Act
                let data = controller.view as! viewDashBoard
                
                // Assert
                XCTAssertEqual(data.light, scenario.expectedLight)
                XCTAssertEqual(data.fan, scenario.expectedFan)
                XCTAssertEqual(data.door, scenario.expectedDoor)
                XCTAssertEqual(data.compressor, scenario.expectedCompressor)
                XCTAssertEqual(data.resistance, scenario.expectedResistance)
                XCTAssertEqual(data.setPoint.temperatureSetPoint, scenario.expectedTemperatureSetPoint)
                XCTAssertEqual(data.setPoint.temperature, scenario.expectedTemperature)
            }
        }
        
        // Define a struct to represent a test scenario
        struct TestScenario {
            let coolManager: CoolManager
            let expectedLight: Bool
            let expectedFan: Bool
            let expectedDoor: Bool
            let expectedCompressor: Bool
            let expectedResistance: Bool
            let expectedTemperatureSetPoint: Double
            let expectedTemperature: Double
        }
        
        // Define an array of test scenarios
        func testScenarios() -> [TestScenario] {
            return [
                TestScenario(coolManager: NormalCoolManagerMock(), expectedLight: true, expectedFan: true, expectedDoor: false, expectedCompressor: true, expectedResistance: true, expectedTemperatureSetPoint: 20, expectedTemperature: 10),
                // Add more scenarios as needed
            ]
        }
    
}
