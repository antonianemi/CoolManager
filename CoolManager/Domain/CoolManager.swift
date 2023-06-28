import Foundation
class CoolManager {
    private (set)var refrigerator:Refrigerator
    internal init(_ refrigerator:Refrigerator){
        self.refrigerator = refrigerator
    }
    func excecute(_ action:Action){
        action.excecute()
    }
}
