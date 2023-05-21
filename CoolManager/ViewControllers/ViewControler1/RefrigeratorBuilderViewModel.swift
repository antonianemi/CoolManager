import Foundation
class RefrigeratorBuilderViewModel {
    private var factory = NormalRefrigeratorFactory()
    private var refrigerator = Refrigerator()
    public var delegate:view1Delegate?
    
    init() {
        refrigerator = factory.create()
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
}
