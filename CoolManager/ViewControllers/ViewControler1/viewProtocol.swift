protocol View1View: AnyObject {
    var presenter:View1Presenter! { get set }
    func setLightStatus(_ status:Bool)
    func setDoorStatus(_ status:Bool)
    func setResistenceStatus(_ status:Bool)
    func setCompressorStatus(_ status:Bool)
    func setTemperature(_ value:String)
    func setTemperatureSetPoint(_ value:String)
    func updateImageSetPoint(_ value:String)
}

class MockView1View: View1View {
    var presenter: View1Presenter!
    var setLightStatusCalled = false
    var setDoorStatusCalled = false
    var setResistenceStatusCalled = false
    var setCompressorStatusCalled = false
    var setTemperatureCalled = false
    var setTemperatureSetPointCalled = false
    var updateImageSetPointCalled = false
    
    func setLightStatus(_ status: Bool) {
        setLightStatusCalled = true
    }
    
    func setDoorStatus(_ status: Bool) {
        setDoorStatusCalled = true
    }
    
    func setResistenceStatus(_ status: Bool) {
        setResistenceStatusCalled = true
    }
    
    func setCompressorStatus(_ status: Bool) {
        setCompressorStatusCalled = true
    }
    
    func setTemperature(_ value: String) {
        setTemperatureCalled = true
    }
    
    func setTemperatureSetPoint(_ value: String) {
        setTemperatureSetPointCalled = true
    }
    
    func updateImageSetPoint(_ value: String) {
        updateImageSetPointCalled = true
    }
}

