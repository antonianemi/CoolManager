class TemperatureController {
    private var temperature: Temperature
    
    init(temperature: Temperature) {
        self.temperature = temperature
    }
    
    func increase() {
        temperature.pushUp()
    }
    
    func decrease() {
        temperature.pullDown()
    }
    
    func convert(to unit: TemperatureUnit) -> Temperature {
        return temperature.converted(to: unit)
    }
    
    // Otros métodos relacionados con el manejo de temperaturas
    
    func getTemperature() -> Temperature {
        return temperature
    }
}
