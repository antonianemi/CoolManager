protocol View1View: AnyObject {
    var presenter:View1Presenter { get set }
    func setLightStatus(_ status:Bool)
    func setDoorStatus(_ status:Bool)
    func setResistenceStatus(_ status:Bool)
    func setCompressorStatus(_ status:Bool)
    func setTemperature(_ value:String)
    func updateImageSetPoint(_ value:String)
}
