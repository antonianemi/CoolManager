//
//  CoolManagerTests.swift
//  CoolManagerTests
//
//  Created by antonio cortes on 5/7/23.
//

import XCTest
@testable import CoolManager
final class CoolManagerTests: XCTestCase {

        func testProcessTemperature_WithValidTemperature_ShouldUpdateStates() {
            // Arrange
            let refrigerator = RefrigeratorBuilder().build()
            
            let expectedCompressorState = false
            let expectedLightState = false
            let expectedResistanceState = true
            let expectedFanState = false
            
            // Act
            refrigerator.processTemperature()
            
            // Assert
            XCTAssertEqual(refrigerator.compresorState, expectedCompressorState)
            XCTAssertEqual(refrigerator.luzState, expectedLightState)
            XCTAssertEqual(refrigerator.resistenciaState, expectedResistanceState)
            XCTAssertEqual(refrigerator.ventiladorState, expectedFanState)
        }
        
        func testCurrentTemperatureState_WithoutTemperatureSet_ShouldReturnDefaultTemperature() {
            // Arrange
            let refrigerator = RefrigeratorBuilder().build()
            let expectedTemperature = Temperature(value: 0, unit: .celsius)
            
            // Act
            let currentTemperatureState = refrigerator.currentTemperatureState
            
            // Assert
            XCTAssertEqual(currentTemperatureState, expectedTemperature)
        }
        
        func testCurrentTemperatureState_WithTemperatureSet_ShouldReturnSetTemperature() {
            // Arrange
            let temperature = Temperature(value: 20, unit: .celsius)
            let refrigerator = RefrigeratorBuilder()
                .build()
            let expectedTemperature = temperature
            
            // Act
            let currentTemperatureState = refrigerator.currentTemperatureState
            
            // Assert
            XCTAssertEqual(currentTemperatureState, expectedTemperature)
        }
}
