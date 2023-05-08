import XCTest
@testable import CoolManager
final class TemperatureRulesTests: XCTestCase {

    func testReadTemperatureRulesFromFile() {
            let filePath = "temperature_rules_test" // Reemplaza con la ruta correcta de tu archivo
            let temperatureRules = readTemperatureRulesFromFile(filePath: filePath)
            
            // Comprueba que se haya leído correctamente al menos una regla de temperatura
            XCTAssertFalse(temperatureRules.isEmpty, "No se leyeron reglas de temperatura")
            
            // Comprueba que las claves y los valores sean del tipo esperado
            for (temperature, status) in temperatureRules {
                XCTAssertTrue(temperature is Temperature, "La clave debe ser de tipo Temperature")
                XCTAssertTrue(status is TemperatureStatus, "El valor debe ser de tipo TemperatureStatus")
            }
            
            // Comprueba que la temperatura 25C tenga el estado esperado
            let temperature25C = Temperature(value: 25.0, unit: .celsius)
            let expectedStatus25C = TemperatureStatus(compressor: false, light: false, resistance: false, fan: false)
            XCTAssertEqual(temperatureRules[temperature25C], expectedStatus25C, "El estado para 25C no coincide")
            
            // Comprueba que la temperatura 40C tenga el estado esperado
            let temperature40C = Temperature(value: 40.0, unit: .celsius)
            let expectedStatus40C = TemperatureStatus(compressor: true, light: true, resistance: false, fan: true)
            XCTAssertEqual(temperatureRules[temperature40C], expectedStatus40C, "El estado para 40C no coincide")
            
            // Agrega más aserciones según sea necesario para las otras temperaturas y estados esperados
            // ...
        }

}
