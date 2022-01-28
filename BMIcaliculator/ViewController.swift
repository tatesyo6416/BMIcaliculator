//
//  ViewController.swift
//  BMIcaliculator
//
//  Created by 立道祥平 on 2022/01/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var height_text: UITextField!
    @IBOutlet weak var weight_text: UITextField!
    @IBOutlet weak var BMIlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        height_text.placeholder = "身長をcmで入力してください"
        weight_text.placeholder = "体重をkgで入力してください"
    }

    @IBAction func mass(_ sender: Any) {
        let doubleH = Double(height_text.text!)
        let doubleW = Double(weight_text.text!)
        BMIlabel.text = calculation(height: doubleH!, weight: doubleW!)
        
    }
    
    func calculation(height: Double, weight: Double) -> String {
        let h = height / 100
        let w = weight
        var result = w / (h * h)
        result = floor(result * 10) / 10
        return result.description
    }
    
}

