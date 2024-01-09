final class PushSetPointUpAction:Executable {
    var setPoint:SetPoint
    init(_ setPoint:SetPoint){ self.setPoint = setPoint }
    func execute() { self.setPoint.up() }
}
