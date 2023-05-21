class DefrostingRefrigeratorFactory: RefrigeratorFactory {
    func create() -> Refrigerator {
        let value = Refrigerator()
        value.setFan(Fan())
        value.setDoor(Door())
        value.setLight(Light())
        value.setResistance(Resistance())
        value.setCompressor(Compressor())
        value.setTemperature(Temperature(value: 35, unit: .celsius))
        return value
    }
}
