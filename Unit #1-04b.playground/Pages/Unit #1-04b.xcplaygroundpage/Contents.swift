

// Created on: Sept-2018
// Created by: Amin Zeina
// Created for: ICS3U
// This program will calculate circumference from user inputs
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let PI : Float = 3.14
    let instructionsLabel : UILabel = UILabel()
    let diameterLabel : UILabel = UILabel()
    let circumferenceLabel : UILabel = UILabel()
    let radiusTextField : UITextField = UITextField()
    let calculateButton : UIButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Enter radius to calculate circumference "
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        diameterLabel.text = "Enter Diameter: "
        view.addSubview(diameterLabel)
        diameterLabel.translatesAutoresizingMaskIntoConstraints = false
        diameterLabel.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        diameterLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        radiusTextField.borderStyle = UITextBorderStyle.roundedRect
        radiusTextField.placeholder = "    cm"
        view.addSubview(radiusTextField)
        radiusTextField.translatesAutoresizingMaskIntoConstraints = false
        radiusTextField.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        radiusTextField.leadingAnchor.constraint(equalTo: diameterLabel.trailingAnchor, constant: 10).isActive = true
        
        calculateButton.setTitle("Calcuate", for: UIControlState.normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.addTarget(self, action: #selector(calculateAreaAndPerimeter), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        calculateButton.topAnchor.constraint(equalTo: diameterLabel.bottomAnchor, constant: 25).isActive = true
        
        //areaLabel.text = "test"
        view.addSubview(circumferenceLabel)
        circumferenceLabel.translatesAutoresizingMaskIntoConstraints = false
        circumferenceLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        circumferenceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    
    @objc func calculateAreaAndPerimeter() {
        // calculate and show area and perimeter 
        let radius : Float = Float(radiusTextField.text!)!
        
        let circumference = 2 * PI * radius
        
        circumferenceLabel.text = "The circumference is \(circumference) cm^2"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
