class NormalRefrigeratorFactory: RefrigeratorFactory {
    func create() -> Refrigerator {
        let refrigerator = Refrigerator()
        refrigerator.setFan(Fan())
        refrigerator.setDoor(Door())
        refrigerator.setLight(Light())
        refrigerator.setResistance(Resistance())
        refrigerator.setCompressor(Compressor())
        refrigerator.setTemperature(Temperature(value: 35, unit: .celsius))
        return refrigerator
    }
}
