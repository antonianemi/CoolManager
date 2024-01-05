final class UnlockDoorAction:Executable {
    var door:Door
    init(_ door:Door){
        self.door = door
    }
    func excecute() {
        door.unlock()
    }
}
