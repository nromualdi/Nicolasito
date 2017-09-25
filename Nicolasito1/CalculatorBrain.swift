//
//  CalculatorBrain.swift
//  Nicolasito1
//
//  Created by LOGIN on 2017-09-24.
//  Copyright © 2017 Nicolasito. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    
    private var accumulator: Double?
    //I've made this an option because when I start the calculator the internal accumulator is not set, until I pass something into it.
    
    mutating func performOperation(_ symbol: String){
        switch symbol {
        case "π":
            accumulator = Double.pi
        case "√":
            if let operand = accumulator{
                accumulator = sqrt(operand)}
        default:
            break
        }
        
    }
    
    mutating func setOperand(_ operand:Double)  {
        accumulator = operand
    }
    
    var result: Double? {
        get{
            return accumulator
        }
    }
    
}
