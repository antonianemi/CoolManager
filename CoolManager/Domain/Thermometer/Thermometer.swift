class Thermometer {
    private var temperature:Double = 0.0
    private var observers: [ThermometerObserver] = []
    
    var Temperature: Double {
        return temperature
    }
    
    init(initialTemperature: Double = 0.0) {
        self.temperature = initialTemperature
    }
    
    func addObserver(_ observer: ThermometerObserver) {
        observers.append(observer)
    }
    
    func updateRandom() {
        self.temperature = Double.random(in: 16.0...34.0)
        notifyObservers()
    }
    
    func updateTemperature(_ newTemperature: Double) {
        if temperature != newTemperature {
            temperature = newTemperature
            notifyObservers()
        }
    }
    
    private func notifyObservers() {
        for observer in observers {
            observer.temperatureChanged(newTemperature: temperature)
        }
    }
}
