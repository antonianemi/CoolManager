final class OpenDoorAction:Executable {
    var door:Door
    init(_ door:Door){
        self.door = door
    }
    func execute() {
        door.open()
    }
}
