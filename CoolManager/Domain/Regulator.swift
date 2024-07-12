class Regulator {
    private var refrigerator: Refrigerator
    private var calculator: ActionCalculator
    init(refrigerator: Refrigerator) {
        self.refrigerator = refrigerator
        let setPoint = self.refrigerator.setPoint.Temperature()
        let termomether = self.refrigerator.thermometro.Temperature
        self.calculator = ActionCalculator(desired: setPoint, current: termomether)
    }

    func regulate() {
        refrigerator.setMode(calculator.calculate())
    }
}
