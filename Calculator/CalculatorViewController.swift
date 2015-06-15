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
    
    var inputNumberState:Bool = false;
    var operand1:Double = 0.0;
    var operand2:Double = 0.0;
    var operation:String = "";
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if (inputNumberState){
            calculatorLabel.text = calculatorLabel.text + digit
        }else{
            calculatorLabel.text = digit
            inputNumberState = true;
        }
    }
    
    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle!
        if operation == "+" {
            operand1 = (calculatorLabel.text! as NSString).doubleValue
            self.operation = operation
            
            inputNumberState = false
        }
    }
    
    @IBAction func enter(sender: UIButton) {
        
        if self.operation != "" {
            operand2 = (calculatorLabel.text! as NSString).doubleValue
        }
        
        var result:Double = 0.0;
        if self.operation == "+" {
            result = self.operand1 + self.operand2
        }
        
        self.operand1 = result
        self.operation = ""
        self.operand2 = 0.0
        
        if result == floor(result) {
            self.calculatorLabel.text = String(format:"%d", Int(result))
        }else{
            self.calculatorLabel.text = String(format:"%f", result)
        }
        
    }
}

