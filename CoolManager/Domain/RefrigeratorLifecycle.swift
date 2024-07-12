import Foundation
class RefrigeratorLifecycle {
    var daySimulatorTemperature: DaySimulatorTemperature
    
    init(initialTemperature: Double) {
        self.daySimulatorTemperature = DaySimulatorTemperature(initialTemperature: initialTemperature)
    }
    
    func simulateDay() {
        for _ in 1...24 {
            let newTemperature = Double.random(in: 18.0...22.0) // Random changes between 18°C and 22°C
            daySimulatorTemperature.updateTemperature(newTemperature: newTemperature)
            sleep(1) // Simulate time (1 second between changes)
        }
    }
}
