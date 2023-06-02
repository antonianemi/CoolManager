final class turnCompressorOnAction:Action {
    var compressor:Compressor
    init(_ compressor:Compressor){ self.compressor = compressor }
    func excecute() { self.compressor.start() }
}
