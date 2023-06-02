final class Door: DoorProtocol {
    internal var _locked:Bool
    internal var _open:Bool

    init(_locked: Bool, _open: Bool) {
        self._locked = _locked
        self._open = _open
    }
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
