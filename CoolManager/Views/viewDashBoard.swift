struct viewDashBoard:ViewCoolManager{
    let resistance:Bool
    let compressor:Bool
    let fan:Bool
    let door:Bool
    let light:Bool
    let setPoint:viewSetPoint
    init(_ resistance:Resistance,_ compressor:Compressor,_ fan:Fan,_ door:Door,_ light:Light,_ setPoint:viewSetPoint){
        self.resistance = resistance.isOn
        self.compressor = compressor.isOn
        self.fan = fan.isOn
        self.door = door._open
        self.light = light.isOn
        self.setPoint = setPoint
    }
}

struct viewSetPoint:ViewCoolManager{
    let temperature: Double
    let temperatureSetPoint: Double
    init(_ setPoint:SetPoint){
        self.temperature = setPoint.temperature.value
        self.temperatureSetPoint = setPoint.temperatureSetPoint.value
    }
}
