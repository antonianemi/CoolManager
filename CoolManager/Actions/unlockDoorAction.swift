final class unlockDoorAction:Action {
    var door:Door
    init(_ door:Door){
        self.door = door
    }
    func excecute() {
        door.unlock()
    }
}
