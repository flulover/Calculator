//
//  Calculator.swift
//  Calculator
//
//  Created by twer on 6/16/15.
//  Copyright (c) 2015 twer. All rights reserved.
//

import Foundation

public class Calculator{
    public var operand1:Double = 0.0
    public var operation:String = ""
    public var operand2:Double = 0.0
   
    public func calculate() -> Double{
        
        var result:Double = 0.0
        switch operation {
        case "+":
            result = operand1 + operand2
        case "−":
            result = operand1 - operand2
        case "×":
            result = operand1 * operand2
        case "÷":
            if operand2 != 0 {
                result = operand1 / operand2
            }else{
            }
        default:
            println("Invalid operation!")
        }
        
        operand1 = result
        operation = ""
        operand2 = 0.0
        
        return result
    }
    
    public func reset(){
        operand1 = 0.0
        operation = ""
        operand2 = 0.0
    }
    
    public func hasOperation() -> Bool{
        return operation != ""
    }
}