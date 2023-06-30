



final class NormalLightFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Light(isOn: true)
    }
}

final class NormalDoorFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Door(_locked: true, _open: false)
    }
}

final class NormalCompressorFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Compressor(isOn: true)
    }
}

final class NormalResistanceFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Resistance(isOn: true)
    }
}

final class NormalFanFactory:ComponentFactory {
    func create() -> RefrigeratorComponent {
        return Fan(isOn: true)
    }
}
