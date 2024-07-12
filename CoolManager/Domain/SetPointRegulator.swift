import Foundation
class SetPointRegulator {
    var temp = 0.0
    var setPoint:SetPoint
    var timer: Timer?
    init(setPoint:SetPoint){
        self.setPoint = setPoint
        temp = setPoint.Temperature()
        timer = Timer.scheduledTimer(
            timeInterval: 5.0,
            target: self,
            selector: #selector(reset),
            userInfo: nil,
            repeats: true)
    }
    
    func up(){
        temp = temp + 1
        self.restartTimer()
    }
    
    func down(){
        temp = temp - 1
        self.restartTimer()
    }
    
    func confirm(){
        setPoint.update(temp)
        timer?.invalidate()
    }
    
    @objc func reset(){
        temp = setPoint.Temperature()
    }
    
    private func restartTimer(){
        timer = Timer.scheduledTimer(
            timeInterval: 5.0,
            target: self,
            selector: #selector(reset),
            userInfo: nil,
            repeats: true)
    }
}
