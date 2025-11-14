//
//  functionBasedCalculator.swift
//  CalculatorFromBasicToAdvanced
//
//  Created by Валерия Пономарева on 12.11.2025.
//

import Foundation

/* 🏆 Задача: создай перечисление CalculationType with 4 math. operations: +, -, *, /. Напиши функцию, возвращающую Int и принимающую в качестве параметра 3 значения: numberOne, numberTwo и ТИП math. operation. Внутри функции в зависимости от значения параметра CalculationType выполни соотв.  math. operation со значениями и верни результат. Реализуй функцию т.о., чтобы при КАЖДОМ вызове на консоль выводилось сообщение типа: "Результат сложения(деления, вычитания, умножения) <...> и <...> равен <...>.". Вызови эту функцию 4 раза для КАЖДОГО мат. оператора в отдельности. */

enum CalculationType: String, CaseIterable {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

func getResult(numberOne: Int, numberTwo: Int, calculationType: CalculationType) -> Int? {
    var result: Int?
    switch calculationType {
    case .addition:
        result = numberOne + numberTwo
    case .subtraction:
        result = numberOne - numberTwo
    case .multiplication:
        result = numberOne * numberTwo
    case .division:
        if numberTwo != 0 {
            result = numberOne / numberTwo
        } else {
            result = nil
        }
        
    }
    if let result = result {
        print("Result \(calculationType) \(numberOne) and \(numberTwo) = \(result)")
    } else {
        print("Error! division by zero!")
    }
    return result
}


let add = getResult(numberOne: 12, numberTwo: 4, calculationType: .addition)
let subtr = getResult(numberOne: 12, numberTwo: 2, calculationType: .subtraction)
let multi = getResult(numberOne: 12, numberTwo: 6, calculationType: .multiplication)
let divi = getResult(numberOne: 12, numberTwo: 0, calculationType: .division)

/*  Result addition 12 and 4 = 16
    Result subtraction 12 and 2 = 10
    Result multiplication 12 and 6 = 72
    Error! division by zero! */
