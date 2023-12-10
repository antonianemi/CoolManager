final class NormalLightFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Light(isOn: true)
    }
}
