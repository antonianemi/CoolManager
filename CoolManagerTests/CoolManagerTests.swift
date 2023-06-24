import XCTest
@testable import CoolManager
final class CoolManagerTests: XCTestCase {
    
    func test_InitializeNormal_ShouldHaveDefaultValues() {
        let data:viewDashBoard = DashBoardController(NormalCoolManagerMock()).view as! viewDashBoard
        XCTAssertEqual(data.light, true)
        XCTAssertEqual(data.fan, true)
        XCTAssertEqual(data.door, false)
        XCTAssertEqual(data.compressor, true)
        XCTAssertEqual(data.resistance, true)
        XCTAssertEqual(data.setPoint.temperatureSetPoint, 20)
        XCTAssertEqual(data.setPoint.temperature, 10)
    }
    
    func test_ModifySetPointoneStepUp_SetPointShouldHaveCalculatedValue() {
        let coolManager = NormalCoolManagerMock()
        let controller = DashBoardController(coolManager)
        controller.moveSetPointUp()
        XCTAssertEqual(coolManager.refrigerator.setPoint.temperatureSetPoint.value, 25)
    }
    
    func test_ModifySetPointoneStepDown_SetPointShouldHaveCalculatedValue() {
        let coolManager = NormalCoolManagerMock()
        let controller = DashBoardController(coolManager)
        controller.moveSetPointDown()
        XCTAssertEqual(coolManager.refrigerator.setPoint.temperatureSetPoint.value, 15)
    }
    
    func test_turnResistenciaOn_ShouldResistenciaOn(){
        let coolManager = DoorOpenedCoolManagerMock()
        let resistance = coolManager.refrigerator.resistance
        XCTAssertEqual(resistance.isOn, false)
        coolManager.excecute(turnResistanceOnAction(resistance))
        XCTAssertEqual(resistance.isOn, true)
    }
    
    func test_turnResistenciaOff_ShouldResistenciaOff(){
        let coolManager = NormalCoolManagerMock()
        let resistance = coolManager.refrigerator.resistance
        XCTAssertEqual(resistance.isOn, true)
        coolManager.excecute(turnResistanceOffAction(resistance))
        XCTAssertEqual(resistance.isOn, false)
    }
    
    func test_turnFanOn_ShouldFanOn(){
        let coolManager = DoorOpenedCoolManagerMock()
        let fan = coolManager.refrigerator.fan
        XCTAssertEqual(fan.isOn, false)
        coolManager.excecute(turnFanOnAction(fan))
        XCTAssertEqual(fan.isOn, true)
    }
    
    func test_turnFanOff_ShouldFanOff(){
        let coolManager = NormalCoolManagerMock()
        let fan = coolManager.refrigerator.fan
        XCTAssertEqual(fan.isOn, true)
        coolManager.excecute(turnFanOffAction(fan))
        XCTAssertEqual(fan.isOn, false)
    }
    
    func test_turnCompressorOn_ShouldCompressorOn(){
        let coolManager = DoorOpenedCoolManagerMock()
        let compressor = coolManager.refrigerator.compressor
        XCTAssertEqual(compressor.isOn, false)
        coolManager.excecute(turnCompressorOnAction(compressor))
        XCTAssertEqual(compressor.isOn, true)
    }
    
    func test_turnCompressorOff_ShouldCompressorOff(){
        let coolManager = NormalCoolManagerMock()
        let compressor = coolManager.refrigerator.compressor
        XCTAssertEqual(compressor.isOn, true)
        coolManager.excecute(turnCompressorOffAction(compressor))
        XCTAssertEqual(compressor.isOn, false)
    }
    
    func test_turnLightOff_ShouldTurnLightOff(){
        let coolManager = NormalCoolManagerMock()
        let light = coolManager.refrigerator.light
        XCTAssertEqual(light.isOn, true)
        coolManager.excecute(turnLightOffAction(light))
        XCTAssertEqual(light.isOn, false)
    }
    
    func test_turnLightOn_ShouldTurnLightOn(){
        let coolManager = DefrostingRefrigeratorMock()
        let light = coolManager.refrigerator.light
        XCTAssertEqual(light.isOn, false)
        coolManager.excecute(turnLightOnAction(light))
        XCTAssertEqual(light.isOn, true)
    }
    
    func test_OpenDoor_ShouldLeaveDoorOpened(){
        let coolManager = NormalCoolManagerMock()
        let door = coolManager.refrigerator.door
        XCTAssertEqual(door.isOpen, false)
        coolManager.excecute(unlockDoorAction(door))
        coolManager.excecute(openDoorAction(door))
        XCTAssertEqual(door.isOpen, true)
    }
    
    func test_CloseDoor_ShouldLeaveDoorClosed(){
        let coolManager = DoorOpenedCoolManagerMock()
        let door = coolManager.refrigerator.door
        XCTAssertEqual(door.isOpen, true)
        coolManager.excecute(closeDoorAction(door))
        XCTAssertEqual(door.isOpen, false)
        XCTAssertEqual(door.isLocked, false)
        coolManager.excecute(lockDoorAction(door))
        XCTAssertEqual(door.isOpen, false)
        XCTAssertEqual(door.isLocked, true)
    }
}
