import Foundation
class RefrigeratorBuilderViewModel {
    private var builder: RefrigeratorBuilder
    public var delegate:view1Delegate?
    private var refrigerator = Refrigerator()
    init() {
        builder = RefrigeratorBuilder()
        refrigerator = builder.setEcoState().build()
        
        do {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
                refrigerator = builder.setEcoState().build()
                delegate?.update()
            }
        }
    }
    func lightStatus()->Bool{
        ((refrigerator.light?.isActive) != nil)
    }
    func compressorStatus()->Bool{
        ((refrigerator.compressor?.isActive) != nil)
    }
    func fanStatus()->Bool{
        ((refrigerator.fan?.isActive) != nil)
    }
    func resistenceStatus()->Bool{
        ((refrigerator.resistance?.isActive) != nil)
    }
    func isDoorOpen()->Bool{
        ((refrigerator.door?.isOpen) != nil)
    }
}
