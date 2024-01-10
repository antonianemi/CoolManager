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
            let controller = SetPointController()
            controller.coolManager = coolManager
            controller.increase()
            XCTAssertEqual(coolManager.refrigerator.setPoint.temperatureSetPoint.value, scenario.expectedTemperatureSetPoint)
        }
    }
    
    func testScenarios() -> [TestScenario] {
        return [
            TestScenario(coolManager: NormalCoolManagerMock.createCoolManager(), expectedTemperatureSetPoint: 25),
            TestScenario(coolManager: DefrostingRefrigeratorMock.createCoolManager(), expectedTemperatureSetPoint: 20.5),
            TestScenario(coolManager: NormalCoolManagerOneIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 21),
            TestScenario(coolManager: NormalCoolManagerTwoIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 22),
            TestScenario(coolManager: NormalCoolManagerThreeIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 23),
            TestScenario(coolManager: NormalCoolManagerFourIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 24),
            TestScenario(coolManager: NormalCoolManagerFiveIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 25),
            TestScenario(coolManager: NormalCoolManagerSixIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 26),
            TestScenario(coolManager: NormalCoolManagerSevenIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 27),
            TestScenario(coolManager: NormalCoolManagerEightIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 28),
            TestScenario(coolManager: NormalCoolManagerNineIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 29),
            TestScenario(coolManager: NormalCoolManagerTenIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 30)
        ]
    }
}
