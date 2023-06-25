import Foundation
enum TemperatureError: Error {
    case inconsistentUnit
    case outOfRangeSetPoint
    case sameMinMaxValue
}
