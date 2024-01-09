final class TurnLightOnAction:Executable {
    var light:Light
    init(_ light:Light){ self.light = light }
    func execute() { self.light.turnOn() }
}
