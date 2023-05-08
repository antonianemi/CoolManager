struct TemperatureStatus: Equatable {
    var compressor: Bool
    var light: Bool
    var resistance: Bool
    var fan: Bool
    
    init(compressor: Bool, light: Bool, resistance: Bool, fan: Bool) {
        self.compressor = compressor
        self.light = light
        self.resistance = resistance
        self.fan = fan
    }
    static func == (lhs: TemperatureStatus, rhs: TemperatureStatus) -> Bool {
        return lhs.compressor == rhs.compressor &&
        lhs.light == rhs.light &&
        lhs.resistance == rhs.resistance &&
        lhs.fan == rhs.fan
    }
}
