import XCTest
@testable import CoolManager
final class CoolManagerTests: XCTestCase {
    
    func test_InitializeNormal_ShouldHaveDefaultValues() {/*
        let data:viewDashBoard = DashBoardController(NormalCoolManagerMock()).view as! viewDashBoard
        XCTAssertEqual(data.light, true)
        XCTAssertEqual(data.fan, true)
        XCTAssertEqual(data.door, false)
        XCTAssertEqual(data.compressor, true)
        XCTAssertEqual(data.resistance, true)
        XCTAssertEqual(data.setPoint.temperatureSetPoint, 20)
        XCTAssertEqual(data.setPoint.temperature, 10)*/
    }
    
    func test_ModifySetPointoneStepUp_SetPointShouldHaveCalculatedValue() {
        let coolManager = NormalCoolManagerMock.createCoolManager()
        let setPoint = coolManager.refrigerator.setPoint
        coolManager.execute(PushSetPointUpAction(setPoint))
        XCTAssertEqual(coolManager.refrigerator.setPoint.temperatureSetPoint.value, 25)
    }
    
    func test_ModifySetPointoneStepDown_SetPointShouldHaveCalculatedValue() {
        let coolManager = NormalCoolManagerMock.createCoolManager()
        let setPoint = coolManager.refrigerator.setPoint
        coolManager.execute(PushSetPointDownAction(setPoint))
        XCTAssertEqual(coolManager.refrigerator.setPoint.temperatureSetPoint.value, 15)
    }
    
    func test_turnResistenciaOn_ShouldResistenciaOn(){
        let coolManager = DoorOpenedCoolManagerMock.createCoolManager()
        let resistance = coolManager.refrigerator.resistance
        XCTAssertEqual(resistance.isOn, false)
        coolManager.execute(TurnResistanceOnAction(resistance))
        XCTAssertEqual(resistance.isOn, true)
    }
    
    func test_turnResistenciaOff_ShouldResistenciaOff(){
        let coolManager = NormalCoolManagerMock.createCoolManager()
        let resistance = coolManager.refrigerator.resistance
        XCTAssertEqual(resistance.isOn, true)
        coolManager.execute(TurnResistanceOffAction(resistance))
        XCTAssertEqual(resistance.isOn, false)
    }
    
    func test_turnFanOn_ShouldFanOn(){
        let coolManager = DoorOpenedCoolManagerMock.createCoolManager()
        let fan = coolManager.refrigerator.fan
        XCTAssertEqual(fan.isOn, false)
        coolManager.execute(TurnFanOnAction(fan))
        XCTAssertEqual(fan.isOn, true)
    }
    
    func test_turnFanOff_ShouldFanOff(){
        let coolManager = NormalCoolManagerMock.createCoolManager()
        let fan = coolManager.refrigerator.fan
        XCTAssertEqual(fan.isOn, true)
        coolManager.execute(TurnFanOffAction(fan))
        XCTAssertEqual(fan.isOn, false)
    }
    
    func test_turnCompressorOn_ShouldCompressorOn(){
        let coolManager = DoorOpenedCoolManagerMock.createCoolManager()
        let compressor = coolManager.refrigerator.compressor
        XCTAssertEqual(compressor.isOn, false)
        coolManager.execute(TurnCompressorOnAction(compressor))
        XCTAssertEqual(compressor.isOn, true)
    }
    
    func test_turnCompressorOff_ShouldCompressorOff(){
        let coolManager = NormalCoolManagerMock.createCoolManager()
        let compressor = coolManager.refrigerator.compressor
        XCTAssertEqual(compressor.isOn, true)
        coolManager.execute(TurnCompressorOffAction(compressor))
        XCTAssertEqual(compressor.isOn, false)
    }
    
    func test_turnLightOff_ShouldTurnLightOff(){
        let coolManager = NormalCoolManagerMock.createCoolManager()
        let light = coolManager.refrigerator.light
        XCTAssertEqual(light.isOn, true)
        coolManager.execute(TurnLightOffAction(light))
        XCTAssertEqual(light.isOn, false)
    }
    
    func test_turnLightOn_ShouldTurnLightOn(){
        let coolManager = DefrostingRefrigeratorMock.createCoolManager()
        let light = coolManager.refrigerator.light
        XCTAssertEqual(light.isOn, false)
        coolManager.execute(TurnLightOnAction(light))
        XCTAssertEqual(light.isOn, true)
    }
    
    func test_OpenDoor_ShouldLeaveDoorOpened(){
        let coolManager = NormalCoolManagerMock.createCoolManager()
        let door = coolManager.refrigerator.door
        XCTAssertEqual(door.isOpen, false)
        coolManager.execute(UnlockDoorAction(door))
        coolManager.execute(OpenDoorAction(door))
        XCTAssertEqual(door.isOpen, true)
    }
    
    func test_CloseDoor_ShouldLeaveDoorClosed(){
        let coolManager = DoorOpenedCoolManagerMock.createCoolManager()
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
