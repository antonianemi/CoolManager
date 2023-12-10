final class SamsumgLightFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Light(isOn: false)
    }
}
