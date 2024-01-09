final class CloseDoorAction:Executable {
    var door:Door
    init(_ door:Door){
        self.door = door
    }
    func execute() {
        self.door.close()
    }
}
