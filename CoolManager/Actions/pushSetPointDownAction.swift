final class pushSetPointDownAction:Action {
    var setPoint:SetPoint
    init(_ value:SetPoint){ self.setPoint = value }
    func excecute() { self.setPoint.downScaleSetPoint() }
}
