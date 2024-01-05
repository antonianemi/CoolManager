final class TurnFanOffAction:Executable {
    var fan:Fan
    init(_ fan:Fan){ self.fan = fan }
    func excecute() { self.fan.turnOff() }
}
