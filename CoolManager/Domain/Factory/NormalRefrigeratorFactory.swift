class NormalRefrigeratorFactory: RefrigeratorFactory {
    func create() -> Refrigerator {
        let value = Refrigerator(maxTemperature: Temperature(value: 35, unit: .celsius),
                                 minTemperature: Temperature(value: -10, unit: .celsius))
        value.setFan(Fan())
        value.setDoor(Door())
        value.setLight(Light())
        value.setResistance(Resistance())
        value.setCompressor(Compressor())
        value.setTemperature(Temperature(value: 35, unit: .celsius))
        value.targetTemperature = Temperature(value: -2, unit: .celsius)
        return value
    }
}
