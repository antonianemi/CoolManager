import Foundation
public class Refrigerator {
    private(set) var setPoint: SetPoint
    private(set) var components = [RefrigeratorComponent]()
    private var stateName:String
    private var timer:Timer = Timer()
    private var observers: [RefrigeratorObserver] = []
    private var temperatureAdjustmentStrategy:any TemperatureAdjustmentStrategy = DefaultTemperatureAdjustmentStrategy()
    
    var door: Door {
        didSet {
            notifyObservers()
        }
    }
    
    var compressor: Compressor {
        didSet {
            notifyObservers()
        }
    }
    
    var light: Light {
        didSet {
            notifyObservers()
        }
    }
    
    var resistance: Resistance {
        didSet {
            notifyObservers()
        }
    }

    var fan: Fan {
        didSet {
            notifyObservers()
        }
    }
    
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
        self.door = door as! Door
        self.fan = fan as! Fan
        self.compressor = compressor as! Compressor
        self.light = light as! Light
        self.resistance = resistance as! Resistance
        self.startStateChangeTimer()
    }
    
    private func startStateChangeTimer() {
        self.initializeTimer()
    }
    
    @objc private func handleStateChange() {
        notifyObservers()
    }
    
    private func notifyObservers() {
        for observer in observers {
            observer.refrigeratorStatusDidChange()
        }
    }
    
    func addObserver(_ observer: RefrigeratorObserver) {
        observers.append(observer)
    }
    
    func removeObserver(_ observer: RefrigeratorObserver) {
        observers = observers.filter { $0 !== observer }
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

