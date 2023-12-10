import Foundation
public class Refrigerator {
    private(set) var setPoint: SetPoint
    private(set) var components = [RefrigeratorComponent]()
    private var stateName:String
    var timer:Timer = Timer()
    var temperatureAdjustmentStrategy:any TemperatureAdjustmentStrategy = DefaultTemperatureAdjustmentStrategy()
    init(_ stateName:String="",
         setPoint:SetPoint,
         fan:FanProtocol,
         door:DoorProtocol,
         compressor:CompressorProtocol,
         light:LightProtocol,
         resistance:ResistanceProtocol) {
        self.setPoint = setPoint
        self.components.append(fan)
        self.components.append(compressor)
        self.components.append(door)
        self.components.append(light)
        self.components.append(resistance)
        self.stateName = stateName
        self.initializeTimer()
    }
    
    private func initializeTimer(){
        timer = Timer.scheduledTimer(timeInterval: 3.0,
                                         target: self,
                                         selector: #selector(timerAction),
                                         userInfo: nil,
                                         repeats: true)
        timer.fire()
    }

    var currentTemperatureStatus: Temperature {
        get {
            return setPoint.temperature
        }
    }

    var door: Door {
        guard let doorComponent = components.first(where: { $0 is Door }) as? Door else {
            fatalError("Door component not found")
        }
        return doorComponent
    }

    var compressor: Compressor {
        guard let compressorComponent = components.first(where: { $0 is Compressor }) as? Compressor else {
            fatalError("Compressor component not found")
        }
        return compressorComponent
    }

    var light: Light {
        guard let lightComponent = components.first(where: { $0 is Light }) as? Light else {
            fatalError("Light component not found")
        }
        return lightComponent
    }

    var resistance: Resistance {
        guard let resistanceComponent = components.first(where: { $0 is Resistance }) as? Resistance else {
            fatalError("Resistance component not found")
        }
        return resistanceComponent
    }

    var fan: Fan {
        guard let fanComponent = components.first(where: { $0 is Fan }) as? Fan else {
            fatalError("Fan component not found")
        }
        return fanComponent
    }
    
    func currentStateName() -> String {
        return "No state"
    }
    
    private func updateComponentSettings(){
        var newStrategy: any TemperatureAdjustmentStrategy
        
        if setPoint.temperature.value > setPoint.temperatureSetPoint.value {
            newStrategy = HighTemperatureAdjustmentStrategy()
        } else if setPoint.temperature.value < setPoint.temperatureSetPoint.value {
            newStrategy = LowTemperatureAdjustmentStrategy()
        } else {
            newStrategy = DefaultTemperatureAdjustmentStrategy()
        }
        temperatureAdjustmentStrategy = newStrategy
    }
    
    @objc func timerAction() {
        self.setPoint.updateTemperature()
        self.updateComponentSettings()
        self.temperatureAdjustmentStrategy.adjustSettings(for: self)
        self.printStatus()
    }
    
    func printStatus(){
        print("\nEstado actual del refrigerador: \(currentStateName())")
        setPoint.printStatus()
        for component in components {
            component.printStatus()
        }
        
    }
}

