//
//  CalculatorBrain.swift
//  Nicolasito1
//
//  Created by LOGIN on 2017-09-24.
//  Copyright © 2017 Nicolasito. All rights reserved.
//

import Foundation

func multiply(op1: Double, op2: Double) -> Double{
    return op1 * op2
}


struct CalculatorBrain{
    
    private var accumulator: Double?
    //I've made this an optional because when I start the calculator the internal accumulator is not set, until I pass something into it.
    
    private enum Operation {//enums can take discrete values (case by case description of what it can be)
        case constant(Double)
        case unaryOperation((Double) -> (Double)) //unaryOperation is a function that takes a double and returns a double
        case binaryOperation((Double,Double) -> Double)
        case equals
    }
    
    private var operations: Dictionary<String,Operation> = [
        "π" : Operation.constant(Double.pi),
        "e" : Operation.constant(M_E),
        "√" : Operation.unaryOperation(sqrt),
        "cos": Operation.unaryOperation(cos),
        "x": Operation.binaryOperation(multiply)
        "=": Operation.equals
        ]
    
    mutating func performOperation(_ symbol: String){
        if let operation = operations[symbol] {
            switch operation{
            case .constant(let value):
                accumulator = value
            case .unaryOperation(let function):
                if accumulator != nil{
                    accumulator = function(accumulator!)
              }
            case .binaryOperation(let function)
            }
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
