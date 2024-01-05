final class TurnCompressorOnAction:Executable {
    var compressor:Compressor
    init(_ compressor:Compressor){ self.compressor = compressor }
    func excecute() { self.compressor.start() }
}
