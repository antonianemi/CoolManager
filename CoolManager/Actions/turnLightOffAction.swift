final class turnLightOffAction:Action {
    var light:Light
    init(_ light:Light){ self.light = light }
    func excecute() { self.light.turnOff() }
}
