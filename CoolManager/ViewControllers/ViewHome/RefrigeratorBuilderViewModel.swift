import Foundation
class RefrigeratorBuilderViewModel {
    private var refrigerator:Refrigerator
    public var delegate:view1Delegate?
    
    init(_ refrigerator:Refrigerator) {
        self.refrigerator = refrigerator
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
    
    func upScaleSetPoint(){
        delegate?.updateSetPointIcon()
    }
    
    func downScaleSetPoint(){
        delegate?.updateSetPointIcon()
    }
}
