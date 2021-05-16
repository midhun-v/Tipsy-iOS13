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
    
    @IBOutlet weak var finalResultAmount: UILabel!
    
    @IBOutlet weak var resultComments: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalResultAmount.text = finalAmountPerHead
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
