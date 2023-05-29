public protocol DoorProtocol: RefrigeratorComponent {
    var _locked: Bool { get set }
    var _open: Bool { get set }

    func lock()

    func unlock()

    func open()

    func close()
    
    func printStatus()
}
