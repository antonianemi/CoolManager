final class SamsumgFanFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Fan(isOn: true)
    }
}
