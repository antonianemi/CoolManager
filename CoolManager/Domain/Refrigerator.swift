class Refrigerator {
    var door: Door
    var light: Light
    var fan: Fan
    var compressor: Compressor
    var resistance: Resistance
    var thermometro: Thermometer
    var setPoint: SetPoint
    init(fan:Fan,
         door:Door,
         compressor:Compressor,
         light:Light,
         resistance:Resistance) {
        self.door = door 
        self.fan = fan 
        self.compressor = compressor 
        self.light = light 
        self.resistance = resistance 
        self.thermometro = Thermometer()
        self.setPoint = SetPoint()
    }
    func setMode(_ mode: any TemperatureAdjustmentStrategy) {
        mode.adjust(self)
    }
}

