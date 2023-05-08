struct Temperature: Hashable {
    let value: Double
    let unit: TemperatureUnit
    
    init(value: Double, unit: TemperatureUnit) {
        self.value = value
        self.unit = unit
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
        
        return Temperature(value: convertedValue, unit: unit)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(value)
        hasher.combine(unit)
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
}
