import Foundation
class RefrigeratorBuilderViewModel {
    private var refrigerator:Refrigerator
    public var delegate:view1Delegate?
    
    init(_ refrigerator:Refrigerator) {
        self.refrigerator = refrigerator
    }
    
    func setPoint()->SetPoint{
        return refrigerator.setPoint
    }
    
    func setPointValue()->String{
        return refrigerator.setPoint.temperatureSetPoint.stringValueOnlyNumber
    }
    
    func lightStatus()->Bool{
        return refrigerator.light.isActive
    }
    func compressorStatus()->Bool{
        return refrigerator.compressor.isActive
    }
    func fanStatus()->Bool{
        return refrigerator.fan.isActive
    }
    func resistenceStatus()->Bool{
        return refrigerator.resistance.isActive
    }
    func isDoorOpen()->Bool{
        return refrigerator.door.isOpen
    }
    func nameState()->String{
        return refrigerator.currentStateName()
    }
    func getTemperarute()->String{
        return refrigerator.currentTemperatureStatus.stringValue
    }
    
    func getIconName()->String{
        return "SETPOINT-42--\(refrigerator.setPoint.getImageNumber()).png"
    }
    
    func upScaleSetPoint(){
        refrigerator.setPoint.up()
        delegate?.updateSetPointIcon()
    }
    
    func downScaleSetPoint(){
        refrigerator.setPoint.down()
        delegate?.updateSetPointIcon()
    }
}
