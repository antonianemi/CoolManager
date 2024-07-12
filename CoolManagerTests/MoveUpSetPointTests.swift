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
            TestScenario(coolManager: CoolManagerOneIntervalMock.create(),   expectedTemperatureSetPoint: 21),
            TestScenario(coolManager: CoolManagerTwoIntervalMock.create(),   expectedTemperatureSetPoint: 22),
            TestScenario(coolManager: CoolManagerThreeIntervalMock.create(), expectedTemperatureSetPoint: 23),
            TestScenario(coolManager: CoolManagerFourIntervalMock.create(),  expectedTemperatureSetPoint: 24),
            TestScenario(coolManager: CoolManagerFiveIntervalMock.create(),  expectedTemperatureSetPoint: 25),
            TestScenario(coolManager: CoolManagerSixIntervalMock.create(),   expectedTemperatureSetPoint: 26),
            TestScenario(coolManager: CoolManagerSevenIntervalMock.create(), expectedTemperatureSetPoint: 27),
            TestScenario(coolManager: CoolManagerEightIntervalMock.create(), expectedTemperatureSetPoint: 28),
            TestScenario(coolManager: CoolManagerNineIntervalMock.create(),  expectedTemperatureSetPoint: 29),
            TestScenario(coolManager: CoolManagerTenIntervalMock.create(),   expectedTemperatureSetPoint: 30)
        ]
    }
}
