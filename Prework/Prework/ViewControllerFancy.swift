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
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipPercentage: UILabel!
    @IBOutlet weak var tipController: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages =  [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipController.selectedSegmentIndex]
        let total = (bill + tip)
        tipAmount.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
    }
    

}

