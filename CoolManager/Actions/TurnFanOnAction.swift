final class TurnFanOnAction:Executable {
    var fan:Fan
    init(_ fan:Fan){ self.fan = fan }
    func execute() { self.fan.turnOn() }
}
