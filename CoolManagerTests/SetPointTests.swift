import XCTest
import CoolManager
final class SetPointTests: XCTestCase {

   func testErrorOutOfRangeSetPoint_ShouldCatchError() throws {
        let temperature     = Temperature(value: 20,  unit: .celsius, interval: 0.5)
        let temperatureGoal = Temperature(value: 250, unit: .celsius, interval: 0.5)
        let maxTemperature  = Temperature(value: 30,  unit: .celsius, interval: 0.5)
        let minTemperature  = Temperature(value: 15,  unit: .celsius, interval: 0.5)
        XCTAssertThrowsError(try SetPoint(temperature: temperature,
                                    temperatureGoal:   temperatureGoal,
                                    maxTemperature:    maxTemperature,
                                    minTemperature:    minTemperature)) { error in
            XCTAssertEqual(error as? TemperatureError, TemperatureError.outOfRangeSetPoint)
        }
    }
    
    func testErrorInconsistentUnit_ShouldCatchError() throws {
        let temperature     = Temperature(value: 20, unit: .celsius, interval: 0.5)
        let temperatureGoal = Temperature(value: 25, unit: .celsius, interval: 0.5)
        let maxTemperature  = Temperature(value: 30, unit: .fahrenheit, interval: 0.5) // Inconsistent unit
        let minTemperature  = Temperature(value: 15, unit: .celsius, interval: 0.5)
        XCTAssertThrowsError(try SetPoint(temperature: temperature,
                                    temperatureGoal:   temperatureGoal,
                                    maxTemperature:    maxTemperature,
                                    minTemperature:    minTemperature)) { error in
            XCTAssertEqual(error as? TemperatureError, TemperatureError.inconsistentUnit)
        }
    }
    
    func testErrorSameMinMaxValue_ShouldCatchError() throws {
        let temperature     = Temperature(value: 20,  unit: .celsius, interval: 0.5)
        let temperatureGoal = Temperature(value: 25, unit: .celsius, interval: 0.5)
        let maxTemperature  = Temperature(value: 30,  unit: .celsius, interval: 0.5)
        let minTemperature  = Temperature(value: 30,  unit: .celsius, interval: 0.5)
        XCTAssertThrowsError(try SetPoint(temperature: temperature,
                                    temperatureGoal:   temperatureGoal,
                                    maxTemperature:    maxTemperature,
                                    minTemperature:    minTemperature)) { error in
            XCTAssertEqual(error as? TemperatureError, TemperatureError.sameMinMaxValue)
        }
    }
}
