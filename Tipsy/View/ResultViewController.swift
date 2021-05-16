//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Midhun V on 16/05/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var finalAmountPerHead: String = ""
    var tipPercentage = 0
    var splitBetween = 0
    
    @IBOutlet weak var finalResultAmount: UILabel!
    @IBOutlet weak var resultComments: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalResultAmount.text = finalAmountPerHead
        resultComments.text = "Split between \(splitBetween) people with \(tipPercentage)% tip."
    }
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
