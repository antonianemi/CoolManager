import Foundation
public protocol RefrigeratorComponent {
    func printStatus()
}

public protocol DoorProtocol: RefrigeratorComponent {
    var _locked: Bool { get set }
    var _open: Bool { get set }

    func lock()

    func unlock()

    func open()

    func close()
    
    func printStatus()
}

public protocol CompressorProtocol: RefrigeratorComponent  {
    var isOn: Bool { get set }
    
    func start()
    
    func stop()
    
    func printStatus()
}

public protocol LightProtocol: RefrigeratorComponent  {
    var isOn: Bool { get set }
    
    func turnOn()
    
    func turnOff()
    
    func printStatus()
}

public protocol ResistanceProtocol: RefrigeratorComponent  {
    var isOn: Bool { get set }
    
    func turnOn()
    
    func turnOff()
    
    func printStatus()
}

public protocol FanProtocol: RefrigeratorComponent  {
    var isOn: Bool { get set }
    
    func turnOn()
    
    func turnOff()
    
    func printStatus()
}


public class Refrigerator {
    private var currentTemperature: Temperature = Temperature(value: 0, unit: .celsius)
    private var state: RefrigeratorState?
    var components: [RefrigeratorComponent]
    
    init(){
        components = [Door(), Compressor(), Light(), Resistance(), Fan()]
    }
    
    func setFan(_ value:FanProtocol){
        components.append(value)
    }
    
    func setDoor(_ value:DoorProtocol){
        components.append(value)
    }
    
    func setCompressor(_ value:CompressorProtocol){
        components.append(value)
    }
    
    func setLight(_ value:LightProtocol){
        components.append(value)
    }
    
    func setResistance(_ value:ResistanceProtocol){
        components.append(value)
    }
    
    func processTemperature(){
        
    }
    
    func setTemperature(_ temperature: Temperature) {
        currentTemperature = temperature
    }
    
    var currentTemperature: Temperature {
        get {
            return currentTemperature
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
            guard let currentState = state else {
                return "No state"
            }
            return currentState.name
        }
    
    
    func printStatus(){
        print("")
        print("")
        print("Estado actual del refrigerador: \(currentStateName())")
        print("")
        print("Temperatura: \(currentTemperature.stringValue)")
        print("")
        for component in components {
            component.printStatus()
        }
    }
}

extension Refrigerator {
    enum StateEnum {
            case normal
            case eco
            case night
            case smart
            case lowpower
            case turbo
            case standby
            case holiday
            case storage
            case childLock
            case freshProduce
            case quickCooling
            case maintenance
            case energySaver
            case defrost
            case party
            case freezing
    }
        
    func setState(_ state: StateEnum) {
            switch state {
            case .normal:
                self.state = NormalState(refrigerator: self)
            case .eco:
                self.state = EcoState(refrigerator: self)
            case .childLock:
                self.state = ChildLockState(refrigerator: self)
            case .smart:
                self.state = SmartModeState(refrigerator: self)
            case .night:
                self.state = NightModeState(refrigerator: self)
            case .lowpower:
                self.state = LowPowerState(refrigerator: self)
            case .turbo:
                self.state = TurboState(refrigerator: self)
            case .standby:
                self.state = StandbyState(refrigerator: self)
            case .holiday:
                self.state = HolidayModeState(refrigerator: self)
            case .storage:
                self.state = StorageState(refrigerator: self)
            case .freshProduce:
                self.state = FreshProduceState(refrigerator: self)
            case .quickCooling:
                self.state = QuickCoolingState(refrigerator: self)
            case .maintenance:
                self.state = MaintenanceModeState(refrigerator: self)
            case .energySaver:
                self.state = EnergySaverState(refrigerator: self)
            case .defrost:
                self.state = DefrostState(refrigerator: self)
            case .party:
                self.state = PartyState(refrigerator: self)
            case .freezing:
                self.state = FreezingState(refrigerator: self)
            }
        }
}
