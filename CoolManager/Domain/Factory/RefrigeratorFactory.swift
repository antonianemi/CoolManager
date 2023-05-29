protocol RefrigeratorFactory {
    init(_ unit:TemperatureUnit)
    func create() throws -> Refrigerator 
}
