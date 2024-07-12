import XCTest
@testable import CoolManager
final class CoolManagerTests: XCTestCase {
    
    func test_ModifySetPointoneStepUp_SetPointShouldHaveCalculatedValue() {
        let coolManager = NormalCoolManagerMock.create()
        let setPoint = coolManager.refrigerator.setPoint
        coolManager.execute(PushSetPointUpAction(setPoint))
        XCTAssertEqual(setPoint.temperatureSetPoint.value, 25)
    }
    
    func test_ModifySetPointoneStepDown_SetPointShouldHaveCalculatedValue() {
        let coolManager = NormalCoolManagerMock.create()
        let setPoint = coolManager.refrigerator.setPoint
        coolManager.execute(PushSetPointDownAction(setPoint))
        XCTAssertEqual(setPoint.temperatureSetPoint.value, 15)
    }
    
    func test_turnResistenciaOn_ShouldResistenciaOn(){
        let coolManager = NormalCoolManagerMock.create()
        let resistance = coolManager.refrigerator.resistance
        XCTAssertEqual(resistance.isOn, false)
        coolManager.execute(TurnResistanceOnAction(resistance))
        XCTAssertEqual(resistance.isOn, true)
    }
    
    func test_turnFanOff_ShouldFanOff(){
        let coolManager = NormalCoolManagerMock.create()
        let fan = coolManager.refrigerator.fan
        XCTAssertEqual(fan.isOn, true)
        coolManager.execute(TurnFanOffAction(fan))
        XCTAssertEqual(fan.isOn, false)
    }
    
    func test_turnCompressorOff_ShouldCompressorOff(){
        let coolManager = NormalCoolManagerMock.create()
        let compressor = coolManager.refrigerator.compressor
        XCTAssertEqual(compressor.isOn, true)
        coolManager.execute(TurnCompressorOffAction(compressor))
        XCTAssertEqual(compressor.isOn, false)
    }
    
    func test_turnLightOn_ShouldTurnLightOn(){
        let coolManager = NormalCoolManagerMock.create()
        let light = coolManager.refrigerator.light
        XCTAssertEqual(light.isOn, false)
        coolManager.execute(TurnLightOnAction(light))
        XCTAssertEqual(light.isOn, true)
    }
    
    func test_CloseDoor_ShouldLeaveDoorClosed(){
        let coolManager = DoorOpenedCoolManagerMock.create()
        let door = coolManager.refrigerator.door
        XCTAssertEqual(door.isOpen, true)
        coolManager.execute(CloseDoorAction(door))
        XCTAssertEqual(door.isOpen, false)
        XCTAssertEqual(door.isLocked, false)
        coolManager.execute(LockDoorAction(door))
        XCTAssertEqual(door.isOpen, false)
        XCTAssertEqual(door.isLocked, true)
    }
}
