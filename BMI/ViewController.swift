//
//  ViewController.swift
//  BMI
//
//  Created by 7 on 2020/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightNumber: UILabel!
    @IBOutlet weak var weightNumber: UILabel!
    
    @IBOutlet weak var bmiNumber: UILabel!
    @IBOutlet weak var commentText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightSlider.value = 150
        heightNumber.text = "150.0"
        
        weightSlider.value = 70
        weightNumber.text = "70.0"
        
        commentText.text = ""
    }

    @IBAction func heightAction(_ sender: UISlider) {
        
        heightSlider.value = sender.value
        heightNumber.text = String(format: "%.1f", heightSlider.value)
        
    }
    
    @IBAction func weightAction(_ sender: UISlider) {
        
        weightSlider.value = sender.value
        weightNumber.text = String(format: "%.1f", weightSlider.value)
    }
    
    
    @IBAction func calculateButton(_ sender: Any) {
        
        let bmi = (weightSlider.value / (heightSlider.value * heightSlider.value)) * 10000
        
        bmiNumber.text = String(format: "%.2f", a)
        
        if bmi < 18.5 {
            commentText.text = "Underweight."
        }
        
        if 18.5 <= bmi && bmi < 25 {
            commentText.text = "Normal Range."
        }
        if 25 <= bmi && bmi < 30 {
            commentText.text = "Overweight."
        }
        if bmi >= 30 {
            commentText.text = "Obese!"
        }
        
    }
}

