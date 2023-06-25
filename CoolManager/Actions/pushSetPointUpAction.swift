final class pushSetPointUpAction:Action {
    var setPoint:SetPoint
    init(_ setPoint:SetPoint){ self.setPoint = setPoint }
    func excecute() { self.setPoint.up() }
}
