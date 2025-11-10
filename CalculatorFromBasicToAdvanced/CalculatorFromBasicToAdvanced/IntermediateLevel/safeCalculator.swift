//
//  safeCalculator.swift
//  CalculatorFromBasicToAdvanced
//
//  Created by Валерия Пономарева on 09.11.2025.
//

import Foundation

print("🏆 -- Calculator: intermediate level --")

enum Operation: String, CaseIterable { // перечисления для операций
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case divide = "/"
}

enum CalculatorError: Error { // обработка ошибок
    case divisionByZero
}

class Calculator {
    let x: Double
    let y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    func calculate(operation: Operation) throws -> Double {
        switch operation {
        case .add:
            return x + y
        case .subtract:
            return x - y
        case .multiply:
            return x * y
        case .divide:
            if y == 0 {
                throw CalculatorError.divisionByZero
            }
            return x / y
        }
    }
}

let calc1 = Calculator(x: 12, y: 3)
let calc2 = Calculator(x: 12, y: 0)

do {
    let result = try calc1.calculate(operation: .divide)
    print("✅ Success: \(result)")
} catch CalculatorError.divisionByZero {
        print("⚠️ Error! Division by zero is not allowed.")
}

func testCalculation(x: Double, y: Double, operation: Operation) {
    let calc = Calculator(x: x, y: y)
    do {
        let result = try calc.calculate(operation: .divide)
        print("✅ Success: \(result)")
    } catch CalculatorError.divisionByZero {
        print("⚠️ Error! Division by zero is not allowed.")
    } catch {
        print("❌ Unknown error: \(error)")
    }
}

/* 🏆 -- Calculator: intermediate level --
 ✅ Success: 4.0
 ⚠️ Error! Division by zero is not allowed. */
