//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    var calculatorBrain = CalculatorBrain()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        
       
        let heightValue = String(format: "%.2f", sender.value)
        heightLabel.text = heightValue + "m"
        print(heightValue)
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        let weightValue = String(format: "%.0f", sender.value)
        weightLabel.text = weightValue + "Kg"
        print(weightValue)
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"
        {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.adviceLabel = calculatorBrain.getAdvice()
            destinationVC.colorLabel = calculatorBrain.getColor()
        }
    }
    
}

