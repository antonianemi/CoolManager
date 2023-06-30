class Door: DoorProtocol {
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
        if !_open {
            _locked = true
        }
    }

    func unlock() {
        _locked = false
    }

    func open() {
        if !_locked {
            _open = true
        }
        //TODO: agregar este flujo alternativo de cuando se intente abrir y la puerta este cerrada es para que el usuario no se pierda mas que nada como orientacion.
       // else{  }
    }

    func close() {
        _open = false
    }
    func printStatus(){
        print("Door Locked: \(isLocked)")
    }
}
