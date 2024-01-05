final class TurnResistanceOffAction:Executable {
    var resistance:Resistance
    init(_ resistance:Resistance){ self.resistance = resistance }
    func excecute() { self.resistance.turnOff() }
}
