import XCTest
@testable import CoolManager
final class RefrigeratorTests: XCTestCase {
    
    var refrigerator: Refrigerator!
    
    override func setUp() {
        super.setUp()
        refrigerator = CoolManager.shared.refrigerator
    }

    override func tearDown() {
        refrigerator = nil
        super.tearDown()
    }
    
    func testUpdateComponentSettingsTemperatureHigher() {
        refrigerator.setPoint.temperature.value = 25.0
        refrigerator.setPoint.temperatureSetPoint.value = 20.0
        refrigerator.updateComponentSettings()
        XCTAssertTrue(refrigerator.temperatureAdjustmentStrategy is HighTemperatureAdjustmentStrategy)
    }

    func testUpdateComponentSettingsTemperatureEqual() {
        refrigerator.setPoint.temperature.value = 20.0
        refrigerator.setPoint.temperatureSetPoint.value = 20.0
        refrigerator.updateComponentSettings()
        XCTAssertTrue(refrigerator.temperatureAdjustmentStrategy is DefaultTemperatureAdjustmentStrategy)
    }

    func testUpdateComponentSettingsTemperatureLower() {
        refrigerator.setPoint.temperature.value = 15.0
        refrigerator.setPoint.temperatureSetPoint.value = 20.0
        refrigerator.updateComponentSettings()
        XCTAssertTrue(refrigerator.temperatureAdjustmentStrategy is LowTemperatureAdjustmentStrategy)
    }
    
    static var testCases: [(name: String, temperature: Double, temperatureSetPoint: Double, expectedStrategy: Any.Type)] = [
        ("High Temperature", 25.0, 20.0, HighTemperatureAdjustmentStrategy.self),
        ("Equal Temperature", 20.0, 20.0, DefaultTemperatureAdjustmentStrategy.self),
        ("Low Temperature", 15.0, 20.0, LowTemperatureAdjustmentStrategy.self),
        // Agrega más casos según sea necesario
    ]
    
    // Define la prueba parametrizada
    func testUpdateComponentSettings() {
        for testCase in RefrigeratorTests.testCases {
            XCTContext.runActivity(named: testCase.name) { (activity) in
                self.refrigerator.setPoint.temperature.value = testCase.temperature
                self.refrigerator.setPoint.temperatureSetPoint.value = testCase.temperatureSetPoint
                self.refrigerator.updateComponentSettings()
                XCTAssertTrue(self.refrigerator.temperatureAdjustmentStrategy is testCase.expectedStrategy)
            }
        }
    }
    
}
