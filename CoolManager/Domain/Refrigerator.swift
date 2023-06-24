import Foundation
public class Refrigerator {
    private(set) var setPoint: SetPoint
    private var state: RefrigeratorState?
    private(set) var components = [RefrigeratorComponent]()
    private var stateName:String
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
    }
    
    
    func processTemperature(){
        
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
            guard let currentState = state else {
                return "No state"
            }
            return currentState.name
        }
    
    
    func printStatus(){
        print("Estado actual del refrigerador: \(currentStateName())")
        print("Temperatura: \(currentTemperatureStatus.stringValue)")
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
