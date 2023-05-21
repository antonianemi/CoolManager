import Foundation
class RefrigeratorBuilder {
    private var refrigerator: Refrigerator
    
    init() {
        refrigerator = Refrigerator()
    }
    
    func build() -> Refrigerator {
        refrigerator.processTemperature()
        return refrigerator
    }

    func setNormalState() -> RefrigeratorBuilder{
        refrigerator.setState(NormalState(refrigerator: refrigerator))
        return self
    }
    
    func setEcoState() -> RefrigeratorBuilder{
        refrigerator.setState(EcoState(refrigerator: refrigerator))
        return self
    }
    
    func setNightModeState() -> RefrigeratorBuilder{
        refrigerator.setState(NightModeState(refrigerator: refrigerator))
        return self
    }
    
    func setStandbyState() -> RefrigeratorBuilder{
        refrigerator.setState(StandbyState(refrigerator: refrigerator))
        return self
    }
    
    func setFreshProduceState() -> RefrigeratorBuilder{
        refrigerator.setState(FreshProduceState(refrigerator: refrigerator))
        return self
    }
    
    func setTurboState() -> RefrigeratorBuilder{
        refrigerator.setState(TurboState(refrigerator: refrigerator))
        return self
    }
    
    func setSmartModeState() -> RefrigeratorBuilder{
        refrigerator.setState(SmartModeState(refrigerator: refrigerator))
        return self
    }
    
    func setLowPowerState() -> RefrigeratorBuilder{
        refrigerator.setState(LowPowerState(refrigerator: refrigerator))
        return self
    }
    
    func setHolidayModeState() -> RefrigeratorBuilder{
        refrigerator.setState(HolidayModeState(refrigerator: refrigerator))
        return self
    }
    
    func setStorageState() -> RefrigeratorBuilder{
        refrigerator.setState(StorageState(refrigerator: refrigerator))
        return self
    }
    
    func setChildLockState() -> RefrigeratorBuilder{
        refrigerator.setState(ChildLockState(refrigerator: refrigerator))
        return self
    }
    
    func setQuickCoolingState() -> RefrigeratorBuilder{
        refrigerator.setState(QuickCoolingState(refrigerator: refrigerator))
        return self
    }
    
    func setMaintenanceModeState() -> RefrigeratorBuilder{
        refrigerator.setState(MaintenanceModeState(refrigerator: refrigerator))
        return self
    }
    
    func setEnergySaverState() -> RefrigeratorBuilder{
        refrigerator.setState(EnergySaverState(refrigerator: refrigerator))
        return self
    }
    
    func setDefrostState() -> RefrigeratorBuilder{
        refrigerator.setState(DefrostState(refrigerator: refrigerator))
        return self
    }
    
    func setPartyState() -> RefrigeratorBuilder{
        refrigerator.setState(PartyState(refrigerator: refrigerator))
        return self
    }
    
    func setFreezingState() -> RefrigeratorBuilder{
        refrigerator.setState(FreezingState(refrigerator: refrigerator))
        return self
    }
}
