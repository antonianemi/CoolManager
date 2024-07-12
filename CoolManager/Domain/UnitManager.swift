class UnitManager {
    static let shared = UnitManager()
    private init() {}
    var currentUnit: TemperatureUnit = .celsius
    func convertTemperature(_ temperature: Temperature, to unit: TemperatureUnit) -> Temperature {
        return temperature.converted(to: unit)
    }
}
