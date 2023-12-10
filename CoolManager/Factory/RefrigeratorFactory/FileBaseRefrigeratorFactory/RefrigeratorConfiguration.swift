import Foundation
struct RefrigeratorConfiguration {
    let unit: TemperatureUnit
    let interval: Double
    let stateName: String
    let temperatureGoal: Temperature
    let maxTemperature: Temperature
    let minTemperature: Temperature
    let currentTemperature: Temperature
    let fan: Fan
    let door: Door
    let compressor: Compressor
    let light: Light
    let resistance: Resistance

    init(from values: [String]) {
        if values[0] == "c"{
            self.unit = .celsius
        }else if values[0] == "f"{
            self.unit = .fahrenheit
        }else{
            self.unit = .celsius
        }
        self.interval = Double(values[1])!
        self.stateName = values[2]
        self.temperatureGoal = Temperature(Double(values[3])!, self.unit, self.interval)
        self.maxTemperature = Temperature(Double(values[4])!, self.unit, self.interval)
        self.minTemperature = Temperature(Double(values[5])!, self.unit, self.interval)
        self.currentTemperature = Temperature(Double(values[6])!, self.unit, self.interval)
        self.fan = Fan(isOn: values[7] == "1")
        self.door = Door(_locked: false, _open: values[8] == "1")
        self.compressor = Compressor(isOn: values[9] == "1")
        self.light = Light(isOn: values[10] == "1")
        self.resistance = Resistance(isOn: values[11] == "1")
    }
}

