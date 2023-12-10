final class NormalDoorFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Door(_locked: true, _open: false)
    }
}
