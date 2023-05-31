import Foundation
class CoolManager {
    private (set)var user:User
    private (set)var refrigerator:Refrigerator
    init(_ user:User,_ refrigerator:Refrigerator){
        self.user = user
        self.refrigerator = refrigerator
    }
    
}
