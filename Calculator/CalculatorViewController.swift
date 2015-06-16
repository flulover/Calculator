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
    var calculator:Calculator = Calculator()
    
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
        calculate()
        
        calculator.operation = sender.currentTitle!
        calculator.operand1 = getDisplayValue()
        inputNumberState = false
    }
    
    @IBAction func enter(sender: UIButton) {
        calculate()
    }
    
    private func calculate(){
        if !calculator.hasOperation() {
            return
        }
        
        calculator.operand2 = getDisplayValue()
        var result:Double = calculator.calculate();
        if result == floor(result) {
            self.calculatorLabel.text = String(format:"%d", Int(result))
        }else{
            self.calculatorLabel.text = String(format:"%f", result)
        }
    }
    
    @IBAction func allClear(sender: UIButton) {
        resetState()
    }
    
    private func getDisplayValue() -> Double{
        return (calculatorLabel.text! as NSString).doubleValue
    }
    
    private func resetState(){
        calculator.reset()
        calculatorLabel.text = "0"
        inputNumberState = false
    }
}