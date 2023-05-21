import Foundation
class RefrigeratorBuilderViewModel {
    private var builder = RefrigeratorBuilder()
    private var refrigerator = Refrigerator()
    public var delegate:view1Delegate?
    
    init() {
        refrigerator = builder.build()
        setRamdomStatus()
    }
    
    func setRamdomStatus(){
        do {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
                refrigerator.setState(.eco)
                delegate?.update()
            }
          }
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
}
