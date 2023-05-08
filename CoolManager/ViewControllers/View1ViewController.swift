// View1ViewController.swift
import UIKit
class View1ViewController: UIViewController {
    let identifier = "View1ViewController"
    override func viewDidLoad() {
        print("ViewController: \(identifier)")
        let refrigerator = RefrigeratorBuilder().build()
            
        
        print("Estado actual del refrigerador:")
        print("Temperatura: \(refrigerator.currentTemperatureState.stringValue)")
        print("Compressor: \(refrigerator.compresorState)")
        print("Light: \(refrigerator.luzState)")
        print("Resistance: \(refrigerator.resistenciaState)")
        print("Fan: \(refrigerator.ventiladorState)")
        print("Door: \(refrigerator.puertaState)")
    }
}
