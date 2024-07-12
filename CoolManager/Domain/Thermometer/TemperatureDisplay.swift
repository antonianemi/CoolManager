class TemperatureDisplay: ThermometerObserver {
    func temperatureChanged(newTemperature: Double) {
        print("El termómetro ha cambiado a \(newTemperature)°C")
    }
}
