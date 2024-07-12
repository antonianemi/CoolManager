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
            controller.coolManager = coolManager
            controller.decrease()
            XCTAssertEqual(coolManager.refrigerator.setPoint.temperatureSetPoint.value, scenario.expectedTemperatureSetPoint)
        }
    }
    
    func testScenarios() -> [TestScenario] {
        return [
            TestScenario(coolManager: CoolManagerOneIntervalMock.create(),   expectedTemperatureSetPoint: 19),
            TestScenario(coolManager: CoolManagerTwoIntervalMock.create(),   expectedTemperatureSetPoint: 18),
            TestScenario(coolManager: CoolManagerThreeIntervalMock.create(), expectedTemperatureSetPoint: 17),
            TestScenario(coolManager: CoolManagerFourIntervalMock.create(),  expectedTemperatureSetPoint: 16),
            TestScenario(coolManager: CoolManagerFiveIntervalMock.create(),  expectedTemperatureSetPoint: 15),
            TestScenario(coolManager: CoolManagerSixIntervalMock.create(),   expectedTemperatureSetPoint: 14),
            TestScenario(coolManager: CoolManagerSevenIntervalMock.create(), expectedTemperatureSetPoint: 13),
            TestScenario(coolManager: CoolManagerEightIntervalMock.create(), expectedTemperatureSetPoint: 12),
            TestScenario(coolManager: CoolManagerNineIntervalMock.create(),  expectedTemperatureSetPoint: 11),
            TestScenario(coolManager: CoolManagerTenIntervalMock.create(),   expectedTemperatureSetPoint: 10)
        ]
    }
}
