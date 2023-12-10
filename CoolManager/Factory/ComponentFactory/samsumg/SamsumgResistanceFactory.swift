final class SamsumgResistanceFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Resistance(isOn: false)
    }
}
