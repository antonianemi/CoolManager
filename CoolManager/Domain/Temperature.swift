class Temperature: Hashable,Equatable {
    var value: Double
    var unit: TemperatureUnit
    private let interval: Double
    
    func pushUp(){
        value = value + interval
    }
    
    func pullDown(){
        value = value - interval
    }
    
    init(value: Double, unit: TemperatureUnit, interval:Double) {
        self.value = value
        self.unit = unit
        self.interval = interval
    }
    
    func converted(to unit: TemperatureUnit) -> Temperature {
        if self.unit == unit {
            return self
        }
        
        var convertedValue: Double
        
        switch unit {
        case .celsius:
            if self.unit == .fahrenheit {
                convertedValue = (value - 32.0) * 5.0 / 9.0
            } else {
                convertedValue = value
            }
        case .fahrenheit:
            if self.unit == .celsius {
                convertedValue = (value * 9.0 / 5.0) + 32.0
            } else {
                convertedValue = value
            }
        }
        
        return Temperature(value: convertedValue, unit: unit, interval: interval)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(value)
        hasher.combine(unit)
    }
    
    static func == (lhs: Temperature, rhs: Temperature) -> Bool {
            return lhs.value == rhs.value && lhs.unit == rhs.unit
    }
    
    var stringValue: String {
        let unitString: String
        
        switch unit {
        case .celsius:
            unitString = "°C"
        case .fahrenheit:
            unitString = "°F"
        }
        
        return "\(value) \(unitString)"
    }
    
    func defaultTemperature()->Temperature{
        return Temperature(value: -10, unit: unit, interval: interval)
    }
}
