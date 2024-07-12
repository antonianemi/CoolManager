class ActionCalculator {
    private var desired: Double
    private var current: Double
    init(desired: Double, current: Double) {
        self.current = current
        self.desired = desired
    }
    
    func calculate() -> TemperatureAdjustmentStrategy {
        var mode:TemperatureAdjustmentStrategy = DefaultTemperatureAdjustmentStrategy()
        if current < desired
        {
            mode = HighTemperatureAdjustmentStrategy()
        }
        else if current > desired
        {
            mode = LowTemperatureAdjustmentStrategy()
        }
        else
        {
            mode = DefaultTemperatureAdjustmentStrategy()
        }
        return mode
    }
}
