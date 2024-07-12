import Foundation
class Monitor {
    private var regulator: Regulator
    private var timer: Timer?
    
    init(refrigerator:Refrigerator) {
        self.regulator = Regulator(refrigerator: refrigerator)
        self.startMonitoring()
    }
    
    private func startMonitoring() {
        timer = Timer.scheduledTimer(
            timeInterval: 2.0,
            target: self,
            selector: #selector(monitor),
            userInfo: nil,
            repeats: true)
    }
    
    func stopMonitoring() {
        timer?.invalidate()
        timer = nil
    }
    
    @objc private func monitor() {
        regulator.regulate()
    }
    
}
