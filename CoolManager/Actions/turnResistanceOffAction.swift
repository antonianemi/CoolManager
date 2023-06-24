final class turnResistanceOffAction:Action {
    var resistance:Resistance
    init(_ resistance:Resistance){ self.resistance = resistance }
    func excecute() { self.resistance.turnOff() }
}
