import Foundation
protocol TemperatureStrategyObserver {
    func strategyDidChange(to strategy: TemperatureAdjustmentStrategy)
}
