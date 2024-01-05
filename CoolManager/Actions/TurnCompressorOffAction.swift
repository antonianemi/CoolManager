final class TurnCompressorOffAction:Executable {
    var compressor:Compressor
    init(_ compressor:Compressor){ self.compressor = compressor }
    func excecute() { self.compressor.stop() }
}
