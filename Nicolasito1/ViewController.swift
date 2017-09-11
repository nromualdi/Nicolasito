//
//  ViewController.swift
//  Nicolasito1
//
//  Created by LOGIN on 2017-09-09.
//  Copyright © 2017 Nicolasito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var Display: UILabel?
    
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
    
    @IBAction func performoperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalsymbol = sender.currentTitle {
            switch mathematicalsymbol {
            case "π":
                Display!.text = String(Double.pi)
            default:
                break
            }}
    }
    
}
