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
            let controller = SetPointController()
            controller.increase()
            XCTAssertEqual(coolManager.refrigerator.setPoint.temperatureSetPoint.value, scenario.expectedTemperatureSetPoint)
        }
    }
    
    func testScenarios() -> [TestScenario] {
        return [
            TestScenario(coolManager: NormalCoolManagerMock.createCoolManager(), expectedTemperatureSetPoint: 15),
            TestScenario(coolManager: DefrostingRefrigeratorMock.createCoolManager(), expectedTemperatureSetPoint: 19.5),
            TestScenario(coolManager: NormalCoolManagerOneIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 19),
            TestScenario(coolManager: NormalCoolManagerTwoIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 18),
            TestScenario(coolManager: NormalCoolManagerThreeIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 17),
            TestScenario(coolManager: NormalCoolManagerFourIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 16),
            TestScenario(coolManager: NormalCoolManagerFiveIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 15),
            TestScenario(coolManager: NormalCoolManagerSixIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 14),
            TestScenario(coolManager: NormalCoolManagerSevenIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 13),
            TestScenario(coolManager: NormalCoolManagerEightIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 12),
            TestScenario(coolManager: NormalCoolManagerNineIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 11),
            TestScenario(coolManager: NormalCoolManagerTenIntervalMock.createCoolManager(), expectedTemperatureSetPoint: 10)
        ]
    }
}
