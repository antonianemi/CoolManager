final class ConfirmSetPointSelectedAction:Executable {
    var setPoint:SetPoint
    init(_ setPoint:SetPoint){ self.setPoint = setPoint }
    func execute() { self.setPoint.confirm() }
}
