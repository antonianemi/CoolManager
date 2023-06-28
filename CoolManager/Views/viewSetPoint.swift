class viewSetPoint:ViewCoolManager{
    let temperature: Double
    let temperatureSetPoint: Double
    init(_ setPoint:SetPoint){
        self.temperature = setPoint.temperature.value
        self.temperatureSetPoint = setPoint.temperatureSetPoint.value
    }
}
