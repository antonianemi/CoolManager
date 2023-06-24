public protocol LightProtocol: RefrigeratorComponent  {
    var isOn: Bool { get set }
    
    func turnOn()
    
    func turnOff()
    
    func printStatus()
}
