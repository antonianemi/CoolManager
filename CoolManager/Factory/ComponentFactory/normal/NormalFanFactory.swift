final class NormalFanFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Fan(isOn: true)
    }
}
