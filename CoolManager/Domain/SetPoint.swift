class SetPoint {
    private var temp:Double = 0.0
    func Temperature()->Double{
        return temp
    }
    public func update(_ value:Double){
        temp = temp + value
    }
}
