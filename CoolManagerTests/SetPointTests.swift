import XCTest
import CoolManager
final class SetPointTests: XCTestCase {

   func testErrorOutOfRangeSetPoint_ShouldCatchError() throws {
       let temperature     = Temperature(20,  .celsius, 0.5)
       let temperatureGoal = Temperature(250, .celsius, 0.5)
       let maxTemperature  = Temperature(30,  .celsius, 0.5)
       let minTemperature  = Temperature(15,  .celsius, 0.5)
        XCTAssertThrowsError(try SetPoint(temperature: temperature,
                                    temperatureGoal:   temperatureGoal,
                                    maxTemperature:    maxTemperature,
                                    minTemperature:    minTemperature)) { error in
            XCTAssertEqual(error as? TemperatureError, TemperatureError.outOfRangeSetPoint)
        }
    }
    
    func testErrorInconsistentUnit_ShouldCatchError() throws {
        let temperature     = Temperature(20, .celsius, 0.5)
        let temperatureGoal = Temperature(25, .celsius, 0.5)
        let maxTemperature  = Temperature(30, .fahrenheit, 0.5) // Inconsistent unit
        let minTemperature  = Temperature(15, .celsius, 0.5)
        XCTAssertThrowsError(try SetPoint(temperature: temperature,
                                    temperatureGoal:   temperatureGoal,
                                    maxTemperature:    maxTemperature,
                                    minTemperature:    minTemperature)) { error in
            XCTAssertEqual(error as? TemperatureError, TemperatureError.inconsistentUnit)
        }
    }
    
    func testErrorSameMinMaxValue_ShouldCatchError() throws {
        let temperature     = Temperature(20,  .celsius, 0.5)
        let temperatureGoal = Temperature(25, .celsius, 0.5)
        let maxTemperature  = Temperature(30,  .celsius, 0.5)
        let minTemperature  = Temperature(30,  .celsius, 0.5)
        XCTAssertThrowsError(try SetPoint(temperature: temperature,
                                    temperatureGoal:   temperatureGoal,
                                    maxTemperature:    maxTemperature,
                                    minTemperature:    minTemperature)) { error in
            XCTAssertEqual(error as? TemperatureError, TemperatureError.sameMinMaxValue)
        }
    }
}
