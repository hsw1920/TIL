//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by 홍승완 on 2022/02/25.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height*height)
        let bmiAdvice: String
        let bmiColor: UIColor
        if bmiValue < 18.5 {
            bmiAdvice = "Eat more pies!"
            bmiColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        } else if bmiValue < 25 {
            bmiAdvice = "Fit as a fiddle!"
            bmiColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        } else {
            bmiAdvice = "Eat less pies"
            bmiColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }
        bmi = BMI(value: bmiValue, advice: bmiAdvice , color: bmiColor)
    }
    
    func getBMIValue()->String {

        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmiTo1DecimalPlace

    }
    
    func getAdvice()->String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor()->UIColor {
        return bmi?.color ?? .white
    }
}
