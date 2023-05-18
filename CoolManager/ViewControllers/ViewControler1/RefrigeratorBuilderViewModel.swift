class RefrigeratorBuilderViewModel {
    private var builder: RefrigeratorBuilder
    private var refrigerator = Refrigerator()
    init() {
        builder = RefrigeratorBuilder()
        refrigerator = builder.setNormalState().build()
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
}
