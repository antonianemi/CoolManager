final class LockDoorAction:Executable {
    var door:Door
    init(_ door:Door){
        self.door = door
    }
    func excecute() {
        door.lock()
    }
}
