final class TurnCompressorOnAction:Executable {
    var compressor:Compressor
    init(_ compressor:Compressor){ self.compressor = compressor }
    func execute() { self.compressor.start() }
}
