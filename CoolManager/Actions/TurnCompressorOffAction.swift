final class TurnCompressorOffAction:Executable {
    var compressor:Compressor
    init(_ compressor:Compressor){ self.compressor = compressor }
    func execute() { self.compressor.stop() }
}
