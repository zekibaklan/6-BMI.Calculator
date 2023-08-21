//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Zeki Baklan on 19.06.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var advicelabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
  
    var bmiValue : String?
    var adviceLabel : String?
    var colorLabel : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        advicelabel.text = adviceLabel
        view.backgroundColor = colorLabel
        
        
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
   

}
