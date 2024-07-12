protocol TemperatureAdjustmentStrategy  {
    var name:String { get }
    func adjust(_ refrigerator: Refrigerator)
    var temperature:Double { get }
    
}

