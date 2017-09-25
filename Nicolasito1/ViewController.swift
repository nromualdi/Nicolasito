//
//  ViewController.swift
//  Nicolasito1
//
//  Created by LOGIN on 2017-09-09.
//  Copyright © 2017 Nicolasito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var Display: UILabel!
    
    var userIsInTheMiddleOfTyping:Bool = false
    
    @IBAction func touchbutton(_ sender: UIButton) {
        let digit = sender.currentTitle!
        let textcurrentlyindisplay = Display!.text!
        if userIsInTheMiddleOfTyping {
            Display!.text = textcurrentlyindisplay + digit
        } else {
            Display!.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
     
     var displayValue: Double {
          get{
               return Double(Display.text!)!
          }
          set{
               Display.text = String(newValue)
          }
     }
     //All this preceding bunch of code does is let me interact with the display value. It lets me get the present value, which in the display is a string, as a double digit, unwrapped. It lets me set the value, which has been calculated as a double digit, transforming it into a string and passing it into the display value.
     
     private var brain =  CalculatorBrain()
    
     @IBAction func performoperation(_ sender: UIButton) {
          if userIsInTheMiddleOfTyping {
               brain.setOperand(displayValue)
               userIsInTheMiddleOfTyping = false
          }
          if let mathematicalSymbol = sender.currentTitle{
               brain.performOperation(mathematicalSymbol)
          }
          if let result = brain.result{
               displayValue = result
          }
     }
     
}
