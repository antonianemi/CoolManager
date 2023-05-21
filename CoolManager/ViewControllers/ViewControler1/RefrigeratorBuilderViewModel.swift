import Foundation
class RefrigeratorBuilderViewModel {
    private var builder: RefrigeratorBuilder
    public var delegate:view1Delegate?
    private var refrigerator = Refrigerator()
    init() {
        builder = RefrigeratorBuilder()
        refrigerator = builder.setNormalState().build()
       
        do {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
                refrigerator = builder.setEcoState().build()
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
}
