//
//  ViewController.swift
//  Calculator
//
//  Created by twer on 6/12/15.
//  Copyright (c) 2015 twer. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var calculatorLabel: UITextField!
    
    var isInitalState:Bool = true;
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if (isInitalState){
            calculatorLabel.text = digit
            isInitalState = false;
        }else{
            calculatorLabel.text = calculatorLabel.text + digit
        }
    }
    
    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle!
        if operation == "+" {
            
        }
    }
}

