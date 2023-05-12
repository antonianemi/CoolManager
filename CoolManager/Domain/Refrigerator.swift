public protocol RefrigeratorComponent {
    func printStatus()
}

public class Refrigerator {
    private var currentTemperature: Temperature = Temperature(value: 0, unit: .celsius)
    private var state: RefrigeratorState?
    var components: [RefrigeratorComponent]
    
    init(){
        components = [Door(), Compressor(), Light(), Resistance(), Fan()]
    }
    
    func setState(_ state: RefrigeratorState) {
        self.state = state
    }
    
    func processTemperature(){
        
    }
    
    func setTemperature(_ temperature: Temperature) {
            currentTemperature = temperature
    }
    
    var currentTemperatureState: Temperature {
        get {
            return currentTemperature
        }
    }

    var door: Door? {
        return components.first(where: { $0 is Door }) as? Door
    }
    
    var compressor: Compressor? {
        return components.first(where: { $0 is Compressor }) as? Compressor
    }
    
    var light: Light? {
        return components.first(where: { $0 is Light }) as? Light
    }
    
    var resistance: Resistance? {
        return components.first(where: { $0 is Resistance }) as? Resistance
    }
    
    var fan: Fan? {
        return components.first(where: { $0 is Fan }) as? Fan
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
        print("Temperatura: \(currentTemperatureState.stringValue)")
        print("")
        for component in components {
            component.printStatus()
        }
    }
}

