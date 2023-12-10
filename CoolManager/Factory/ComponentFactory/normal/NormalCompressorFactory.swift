final class NormalCompressorFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Compressor(isOn: true)
    }
}
