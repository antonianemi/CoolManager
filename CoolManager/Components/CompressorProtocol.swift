public protocol CompressorProtocol: RefrigeratorComponent  {
    var isOn: Bool { get set }
    
    func start()
    
    func stop()
    
    func printStatus()
}
