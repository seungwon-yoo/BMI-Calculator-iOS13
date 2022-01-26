//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by 유승원 on 2022/01/26.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        switch bmiValue {
        case 0..<18.5:
            bmi = BMI(value: bmiValue, advice: "밥좀 먹고 다녀라 나가서 굶고 다니지 말고", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "잘 먹고 다니나보네 지금처럼만 해", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        default:
            bmi = BMI(value: bmiValue, advice: "조금 덜 먹을 필요가 있어 보입니다..", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    
    func getBmiValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
