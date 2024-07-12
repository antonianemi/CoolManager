class DaySimulatorTemperature {
    private var thermometer: Thermometer
    
    init(initialTemperature: Double) {
        self.thermometer = Thermometer(initialTemperature: initialTemperature)
    }
    
    func updateTemperature(newTemperature: Double) {
        thermometer.updateTemperature(newTemperature)
    }
    
    func addObserver(_ observer: ThermometerObserver) {
        thermometer.addObserver(observer)
    }
}
