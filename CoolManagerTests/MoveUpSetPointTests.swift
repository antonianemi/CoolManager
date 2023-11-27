import XCTest
@testable import CoolManager
final class MoveUpSetPointTests: XCTestCase {
    
    struct TestScenario {
        let coolManager: CoolManager
        let expectedTemperatureSetPoint: Double
    }
    
    func test_ModifySetPointoneStepUp_SetPointShouldHaveCalculatedValue() {
        for scenario in testScenarios() {
            let coolManager = scenario.coolManager
            let controller = DashBoardController(coolManager)
            controller.moveSetPointUp()
            XCTAssertEqual(coolManager.refrigerator.setPoint.temperatureSetPoint.value, scenario.expectedTemperatureSetPoint)
        }
    }
    
    func testScenarios() -> [TestScenario] {
        return [
            TestScenario(coolManager: NormalCoolManagerMock(), expectedTemperatureSetPoint: 25),
            TestScenario(coolManager: DefrostingRefrigeratorMock(), expectedTemperatureSetPoint: 20.5),
            TestScenario(coolManager: NormalCoolManagerOneIntervalMock(), expectedTemperatureSetPoint: 21),
            TestScenario(coolManager: NormalCoolManagerTwoIntervalMock(), expectedTemperatureSetPoint: 22),
            TestScenario(coolManager: NormalCoolManagerThreeIntervalMock(), expectedTemperatureSetPoint: 23),
            TestScenario(coolManager: NormalCoolManagerFourIntervalMock(), expectedTemperatureSetPoint: 24),
            TestScenario(coolManager: NormalCoolManagerFiveIntervalMock(), expectedTemperatureSetPoint: 25),
            TestScenario(coolManager: NormalCoolManagerSixIntervalMock(), expectedTemperatureSetPoint: 26),
            TestScenario(coolManager: NormalCoolManagerSevenIntervalMock(), expectedTemperatureSetPoint: 27),
            TestScenario(coolManager: NormalCoolManagerEightIntervalMock(), expectedTemperatureSetPoint: 28),
            TestScenario(coolManager: NormalCoolManagerNineIntervalMock(), expectedTemperatureSetPoint: 29),
            TestScenario(coolManager: NormalCoolManagerTenIntervalMock(), expectedTemperatureSetPoint: 30)
        ]
    }
}
