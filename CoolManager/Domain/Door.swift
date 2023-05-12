class Door: RefrigeratorComponent {
    private var _locked: Bool = false
    private var _open: Bool = false

    var isLocked: Bool {
        return _locked
    }

    var isOpen: Bool {
        return _open
    }

    func lock() {
        _locked = true
    }

    func unlock() {
        _locked = false
    }

    func open() {
        if !_locked {
            _open = true
        }
    }

    func close() {
        _open = false
    }
    func printStatus(){
        print("Door Locked: \(isLocked)")
    }
}