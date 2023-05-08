class Refrigerator {
    private var currentTemperature: Temperature?
    
    private var compressor: Bool = false
    private var light: Bool = false
    private var resistance: Bool = false
    private var fan: Bool = false
    private var door: Bool = false

    func processTemperature() {
        guard let temperature = currentTemperature else {
            return
        }
        
        let temperatureRules = readTemperatureRulesFromFile(filePath: "temperature_rules")
        
        if let status = temperatureRules[temperature] {
            compressor = status.compressor
            light = status.light
            resistance = status.resistance
            fan = status.fan
        }
    }
    
    var currentTemperatureState: Temperature {
        get {
            return currentTemperature ?? Temperature(value: 0, unit: .celsius)
        }
    }
    
    var compresorState: Bool {
        get {
            return compressor
        }
        set {
            compressor = newValue
        }
    }
    
    var luzState: Bool {
        get {
            return light
        }
        set {
            light = newValue
        }
    }
    
    var resistenciaState: Bool {
        get {
            return fan
        }
        set {
            fan = newValue
        }
    }
    
    var ventiladorState: Bool {
        get {
            return fan
        }
        set {
            fan = newValue
        }
    }
    
    var puertaState: Bool {
        get {
            return door
        }
        set {
            door = newValue
        }
    }
}
