final class closeDoorAction:Action {
    var door:Door
    init(_ door:Door){
        self.door = door
    }
    func excecute() {
        self.door.close()
    }
}
