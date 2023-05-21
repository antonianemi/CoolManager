import Foundation
class RefrigeratorBuilderViewModel {
    private var factory = NormalRefrigeratorFactory()
    private(set) var refrigerator:Refrigerator
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
    
    func getIconNumber()->String{
        let setPoint = refrigerator.currentTemperatureStatus.value // Punto de ajuste de temperatura
        let minTemperature = refrigerator.minTemperatureProperty // Temperatura mínima
        let maxTemperature = refrigerator.maxTemperatureProperty // Temperatura máxima
        let totalImages: Int = 42 // Total de imágenes disponibles

        // Calcular la posición de la imagen en la escala
        let imageNumber = Int(((setPoint - minTemperature) / (maxTemperature - minTemperature)) * Double(totalImages))

        // Utilizar el número de imagen calculado
        return "SETPOINT-\(imageNumber)--0.png"
    }
    
    func upScaleSetPoint(){
        refrigerator.upScaleSetPoint()
        delegate?.updateSetPointIcon()
    }
    
    func downScaleSetPoint(){
        refrigerator.downScaleSetPoint()
        delegate?.updateSetPointIcon()
    }
}
