import Foundation
class CoolManager {
    static let shared = CoolManager()
    private(set) var refrigerator: Refrigerator
    private init() {
        self.refrigerator = NormalRefrigeratorFactory().create()
    }
    func execute(_ action: Executable) {
        action.execute()
    }
    
    func commitSetPoint(){
        self.execute(ConfirmSetPointSelectedAction(refrigerator.setPoint))
    }
    func moveSetPointUp(){
        self.execute(PushSetPointUpAction(refrigerator.setPoint))
    }
    func moveSetPointDown(){
        self.execute(PushSetPointDownAction(refrigerator.setPoint))
    }
}
