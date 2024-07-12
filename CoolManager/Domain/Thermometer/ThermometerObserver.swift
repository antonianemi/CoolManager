protocol ThermometerObserver: AnyObject {
    func temperatureChanged(newTemperature: Double)
}
