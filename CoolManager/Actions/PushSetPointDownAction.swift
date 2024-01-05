final class PushSetPointDownAction:Executable {
    var setPoint:SetPoint
    init(_ value:SetPoint){ self.setPoint = value }
    func excecute() { self.setPoint.down() }
}
