//
//  ViewController.swift
//  Prework
//
//  Created by user201144 on 8/1/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var splitAmount: UILabel!
    @IBOutlet weak var tipPercentage: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var splitSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        var billText = billAmountTextField.text!
        
        if let i = billText.firstIndex(of: "$") {
            billText.remove(at: i)
        }
        
        let bill = Double(billText) ?? 0
        let tipPercent = Double(tipSlider.value)
        let tip = bill * tipPercent
        let split = Int(splitSlider.value) // kind of janky but oh well
        let total = (bill + tip) / Double(split)
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
        tipPercentage.text = String(format: "%.2f%%", tipPercent)
        if split > 1 {
            splitAmount.text = String(format: "%d people", split)
        } else {
            splitAmount.text = String(format: "%d person", split)
        }
    }
    

}

