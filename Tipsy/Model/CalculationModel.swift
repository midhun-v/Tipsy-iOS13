//
//  CalculationModel.swift
//  Tipsy
//
//  Created by Midhun V on 16/05/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

struct CalculationModel {
        
    func tipPercentage(percentage:Int) -> Int  {
        if percentage == 0{
            return 0
        }
        else if percentage == 10{
            return 10
        }
        else if percentage == 20{
            return 20
        }
        else {
            return 0
        }
    }
    
    func addTipPercentage(billAmount: Float, tip: Int) -> Float {
        return (billAmount-(billAmount*(Float(tip)/100)))
    }
    
    func divideToSplit(tipAdded: Float, numberOfPeople: Int) -> Float {
        return tipAdded/Float(numberOfPeople)
    }
    
}
