//
//  basicCalculator.swift
//  CalculatorFromBasicToAdvanced
//
//  Created by Валерия Пономарева on 09.11.2025.
//

import Foundation

// "-- Calculator: basic level --")

class Calculator {
    let a: Double
    let b: Double
    
    init(a: Double, b: Double) {
        self.a = a
        self.b = b
    }
    
    var addition: Double { // computed property
        return a + b
    }
    var multiplication: Double {
        return a * b
    }
    var subtraction: Double {
        return a - b
    }
    var division: Double {
        if b != 0 {
            return a / b
        } else {
            print("⚠️ Error: Division by zero!")
            return 0
        }
    }
}
let calc = Calculator(a: 15, b: 3)
/* print("First number:", calc.a, "Second number:", calc.b)
print("Addition: \(calc.a) + \(calc.b) = \(calc.addition)")
print("Multiplication: \(calc.a) - \(calc.b) = \(calc.multiplication)")
print("Subtraction: \(calc.a) * \(calc.b) = \(calc.subtraction)")
print("Division: \(calc.a) / \(calc.b) = \(calc.division)") */

/* Calculator from Basic Level to Advanced Project.
 -- Calculator: basic level --
 First number: 15.0 Second number: 3.0
 Addition: 15.0 + 3.0 = 18.0
 Multiplication: 15.0 - 3.0 = 45.0
 Subtraction: 15.0 * 3.0 = 12.0
 Division: 15.0 / 3.0 = 5.0 */
