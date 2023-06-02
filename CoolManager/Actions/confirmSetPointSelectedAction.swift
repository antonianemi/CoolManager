
final class confirmSetPointSelectedAction:Action {
    var setPoint:SetPoint
    init(_ setPoint:SetPoint){ self.setPoint = setPoint }
    func excecute() { self.setPoint.confirm() }
}
