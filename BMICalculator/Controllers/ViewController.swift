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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
//        print(String(format: "%.2f", sender.value))
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        let weight =  String(Int(sender.value))
        weightLabel.text = "\(weight)Kg"
//        weightValue.text = String(format: "%.0f", sender.value)
        
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
    }
    
}

