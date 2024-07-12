protocol RefrigeratorState {
    func execute(_ action: Executable, in manager: CoolManager)
}

class NormalState: RefrigeratorState {
    func execute(_ action: Executable, in manager: CoolManager) {
        action.execute()
    }
}

class ResistanceOnState: RefrigeratorState {
    func execute(_ action: Executable, in manager: CoolManager) {
        action.execute()
    }
}
