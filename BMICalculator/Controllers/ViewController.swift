//
//  ViewController.swift
//  BMICalculator
//
//  Created by Marvellous Dirisu on 02/06/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var bmiResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
//        formats the float value to a 2 decimal place
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        let weight =  String(Int(sender.value))
        weightLabel.text = "\(weight)Kg"
//        weightValue.text = String(format: "%.0f", sender.value)
        
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
//        print(heightSlider.value)
//        print(weightSlider.value)
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        print(bmi)
        bmiResult.text = "Your BMI is \(bmi)"
        
    }
    
}

