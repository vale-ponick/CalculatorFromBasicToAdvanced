//
//  calculatorWithEnumAndFunction.swift
//  CalculatorFromBasicToAdvanced
//
//  Created by Валерия Пономарева on 12.11.2025.
//

import Foundation

print("🏆 -- Calculator: from Alex Efimov --")

enum CalculationType: String { // используй ИСХОДНЫЕ ЗНАЧЕНИЯ
    case addition = "addition"
    case subtraction = "subtraction"
    case multiplication = "multiplication"
    case division = "division"
}

func getResult(
    _ calculationType: CalculationType,
    betweenNumber firstNumber: Int,
    andNumber secondNumber: Int)
-> Int? {
    
    var result = firstNumber
    
    switch calculationType {
    case .addition: result = firstNumber + secondNumber
    case .subtraction: result = firstNumber - secondNumber
    case .multiplication: result = firstNumber * secondNumber
    case .division:
        if secondNumber != 0 {
            result = firstNumber / secondNumber
        } else {
            print("You can't divide by zero!")
            return nil
        }
    }
    
    print("Result \(calculationType.rawValue) between \(firstNumber) and \(secondNumber) equals \(result)")
    
    return result
}

if let result = getResult(.addition, betweenNumber: 5, andNumber: 3) {
    print("Result: \(result)") // Output: Result of addition between 5 and 3 equals 8
}

if let result = getResult(.multiplication, betweenNumber: 10, andNumber: 2) {
    print("Result: \(result)") // Output: Result of division between 10 and 2 equals 5
}

if let result = getResult(.division, betweenNumber: 10, andNumber: 0) {
    print("Result: \(result)") // Output: Result of division between 10 and 2 equals 5
}
_ = getResult(.subtraction, betweenNumber: 12, andNumber: 8)


/* 🏆 -- Calculator: from Alex Efimov --
 Result addition between 5 and 3 equals 8
 Result: 8
 Result multiplication between 10 and 2 equals 20
 Result: 20
 You can't divide by zero!
 Result subtraction between 12 and 8 equals 4 */
