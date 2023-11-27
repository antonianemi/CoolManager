import XCTest
@testable import CoolManager
final class MoveDownSetPointTests: XCTestCase {
    
    struct TestScenario {
        let coolManager: CoolManager
        let expectedTemperatureSetPoint: Double
    }
    
    func test_ModifySetPointoneStepUp_SetPointShouldHaveCalculatedValue() {
        for scenario in testScenarios() {
            let coolManager = scenario.coolManager
            let controller = DashBoardController(coolManager)
            controller.moveSetPointDown()
            XCTAssertEqual(coolManager.refrigerator.setPoint.temperatureSetPoint.value, scenario.expectedTemperatureSetPoint)
        }
    }
    
    func testScenarios() -> [TestScenario] {
        return [
            TestScenario(coolManager: NormalCoolManagerMock(), expectedTemperatureSetPoint: 15),
            TestScenario(coolManager: DefrostingRefrigeratorMock(), expectedTemperatureSetPoint: 19.5),
            TestScenario(coolManager: NormalCoolManagerOneIntervalMock(), expectedTemperatureSetPoint: 19),
            TestScenario(coolManager: NormalCoolManagerTwoIntervalMock(), expectedTemperatureSetPoint: 18),
            TestScenario(coolManager: NormalCoolManagerThreeIntervalMock(), expectedTemperatureSetPoint: 17),
            TestScenario(coolManager: NormalCoolManagerFourIntervalMock(), expectedTemperatureSetPoint: 16),
            TestScenario(coolManager: NormalCoolManagerFiveIntervalMock(), expectedTemperatureSetPoint: 15),
            TestScenario(coolManager: NormalCoolManagerSixIntervalMock(), expectedTemperatureSetPoint: 14),
            TestScenario(coolManager: NormalCoolManagerSevenIntervalMock(), expectedTemperatureSetPoint: 13),
            TestScenario(coolManager: NormalCoolManagerEightIntervalMock(), expectedTemperatureSetPoint: 12),
            TestScenario(coolManager: NormalCoolManagerNineIntervalMock(), expectedTemperatureSetPoint: 11),
            TestScenario(coolManager: NormalCoolManagerTenIntervalMock(), expectedTemperatureSetPoint: 10)
        ]
    }
}
