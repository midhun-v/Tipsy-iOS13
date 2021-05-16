//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tipPercentage: Int = 0
    var splitNumber: Int = 0
    var finalAmountPerPerson: Float = 0.0
    let calculationModel = CalculationModel()
    
    @IBOutlet weak var billInputField: UITextField!
    @IBOutlet weak var splitInput: UILabel!
    
    @IBAction func tipSelected(_ sender: UIButton) {
        tipPercentage = calculationModel.tipPercentage(percentage: sender.tag)
    }
    
    @IBAction func splitStepper(_ sender: UIStepper) {
        splitInput.text = String(format: "%.0f",  sender.value)
        splitNumber = Int(sender.value)
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        
        let billInput = Float(billInputField.text!)
        let tipApplied = calculationModel.addTipPercentage(billAmount:billInput!, tip:tipPercentage)
        finalAmountPerPerson = calculationModel.divideToSplit(tipAdded: tipApplied, numberOfPeople: splitNumber)
        
        performSegue(withIdentifier: "ResultView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ResultView"{
            if let destinationVC = segue.destination as? ResultViewController {
                destinationVC.finalAmountPerHead = String(format: "%.1f",finalAmountPerPerson)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

}
