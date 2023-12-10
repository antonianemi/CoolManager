final class SamsumgCompressorFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Compressor(isOn: true)
    }
}
