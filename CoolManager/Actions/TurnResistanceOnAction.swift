final class TurnResistanceOnAction:Executable {
    var resistance:Resistance
    init(_ resistance:Resistance){ self.resistance = resistance }
    func execute() { self.resistance.turnOn() }
}
