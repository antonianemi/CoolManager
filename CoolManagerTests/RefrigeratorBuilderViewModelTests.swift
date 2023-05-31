import XCTest
@testable import CoolManager
final class RefrigeratorBuilderViewModelCelciusTests: XCTestCase {
    
    func strDouble(_ name:String,_ expected:Double,_ given:Double)->String{
        "\n \n MESSAGE: \(name)\n Expected = \(expected)\n Given    = \(given) \n"
    }
    func strBool(_ name:String,_ expected:Bool,_ given:Bool)->String{
        "\n \n MESSAGE: \(name)\n Expected = \(expected)\n Given    = \(given) \n"
    }
    func strTemp(_ name:String,_ expected:Temperature,_ given:Temperature)->String{
        "\n \n MESSAGE: \(name)\n Expected = \(expected)\n Given    = \(given) \n"
    }
    func strString(_ name:String,_ expected:String,_ given:String)->String{
        "\n \n MESSAGE: \(name)\n Expected = \(expected)\n Given    = \(given) \n"
    }
    func strInt(_ name:String,_ expected:Int,_ given:Int)->String{
        "\n \n MESSAGE: \(name)\n Expected = \(expected)\n Given    = \(given) \n"
    }
    func strTempUnit(_ name:String,_ expected:TemperatureUnit,_ given:TemperatureUnit)->String{
        "\n \n MESSAGE: \(name)\n Expected = \(expected)\n Given    = \(given) \n"
    }
    
    
    func test_Normal_Initialization_Refrigerator() {
        let refrigerator = try? NormalRefrigeratorFactory(.celsius).create()
        let viewModel = RefrigeratorBuilderViewModel(refrigerator!)
        let expectedCompressorState = true
        let expectedLightState = true
        let expectedResistanceState = true
        let expectedDoorOpenState = false
        let setPointExpected = Temperature(value: 20, unit: .celsius)
        let TemperatureMaxExpected = Temperature(value: 35, unit: .celsius)
        let TemperatureMinExpected = Temperature(value: -5, unit: .celsius)
        let currentTemperature = Temperature(value: 10, unit: .celsius)
        
        let givenSetPoint = viewModel.refrigerator.setPoint
        
        let compressorErrorMSG     = strBool("CompressorState",expectedCompressorState,viewModel.compressorStatus())
        let lightErrorMSG          = strBool("LightState",expectedLightState,viewModel.lightStatus())
        let resistenceErrorMSG     = strBool("ResistanceState",expectedResistanceState,viewModel.resistenceStatus())
        let doorErrorMSG           = strBool("DoorOpenState",expectedDoorOpenState,viewModel.isDoorOpen())
        let setPointErrorMSG       = strTemp("SetPoint",setPointExpected,givenSetPoint.temperatureGoal)
        let temperatureErrorMSG    = strTemp("CurrentTemperature",currentTemperature,givenSetPoint.temperature)
        let maxTemperatureErrorMSG = strTemp("TemperatureMax",TemperatureMaxExpected,givenSetPoint.maxTemperature)
        let minTemperatureErrorMSG = strTemp("TemperatureMin",TemperatureMinExpected,givenSetPoint.minTemperature)
       
        XCTAssertEqual(viewModel.compressorStatus(), expectedCompressorState, compressorErrorMSG)
        XCTAssertEqual(viewModel.lightStatus(), expectedLightState, lightErrorMSG)
        XCTAssertEqual(viewModel.resistenceStatus(), expectedResistanceState,resistenceErrorMSG)
        XCTAssertEqual(viewModel.isDoorOpen(), expectedDoorOpenState,doorErrorMSG)
        XCTAssertEqual(givenSetPoint.temperatureGoal, setPointExpected,setPointErrorMSG)
        XCTAssertEqual(givenSetPoint.temperature, currentTemperature,temperatureErrorMSG)
        XCTAssertEqual(givenSetPoint.maxTemperature, TemperatureMaxExpected,maxTemperatureErrorMSG)
        XCTAssertEqual(givenSetPoint.minTemperature, TemperatureMinExpected,minTemperatureErrorMSG)
    }
    
    func test_ShouldSetRefrigeratorUpScaleSetPoint() {
        
    }
    
    func test_ShouldSetRefrigeratorDownScaleSetPoint() {
        /*let viewModel = RefrigeratorBuilderViewModel()
        viewModel.downScaleSetPoint()
        let expectedTemperature = Temperature(value: -15, unit: .celsius)
        XCTAssertEqual(viewModel.refrigerator.targetTemperature, expectedTemperature)*/
    }
    
    
    
    
    
    
    
    
    
    
    
    func test_WhenSetPointIsIncreasedToMaximum_ShouldDisplayCorrectIcon(){
        let refrigerator = try? NormalRefrigeratorFactory(.celsius).create()
        let viewModel = RefrigeratorBuilderViewModel(refrigerator!)
        let initialStateExpected = "SETPOINT-42--26.png"
        let finalStateExpected = "SETPOINT-42--42.png"
        
        XCTAssertEqual(viewModel.getIconName(), initialStateExpected)
        repeat {
            viewModel.upScaleSetPoint()
        }
        while (viewModel.getIconName() != finalStateExpected)
        XCTAssertEqual(viewModel.getIconName(), finalStateExpected)
    }
    
}
