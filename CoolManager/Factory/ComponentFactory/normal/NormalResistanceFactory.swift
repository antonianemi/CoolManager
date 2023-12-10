final class NormalResistanceFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Resistance(isOn: true)
    }
}
