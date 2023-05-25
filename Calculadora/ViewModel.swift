//
//  ViewModel.swift
//  Calculadora
//
//  Created by Egna Lizeth Polo Rubiano on 23/5/23.
//

import Foundation

final class ViewModel: ObservableObject {
    @Published var textFieldValue: String = "0"
    
    var textFieldSaveValue: String = "0"
    var operationToExecute: OperationType?
    var shouldRunOperation: Bool = false
    
    func logic(key: KeyboardButton){
        switch key.type {
        case .reset :
            textFieldValue = "0"
            textFieldSaveValue = "0"
            operationToExecute = nil
            shouldRunOperation = false
            
        case .number(let value):
            if shouldRunOperation {
                textFieldValue = "0"
            }
            textFieldValue = textFieldValue == "0" ? "\(value)" : textFieldValue + "\(value)"
            
        case .operation(let type):
            textFieldSaveValue = textFieldValue
            operationToExecute = type
            shouldRunOperation = true
            
        case .result:
            guard let operation = operationToExecute else {
                
                return
            }
            
            switch operation {
            case .sum:
                textFieldValue = "\(Int(textFieldValue)! + Int(textFieldSaveValue)!)"
                
            case .multiplication:
                textFieldValue = "\(Int(textFieldValue)! * Int(textFieldSaveValue)!)"
                
            case .rest:
                textFieldValue =  "\(abs(Int(textFieldValue)! - Int(textFieldSaveValue)!))"
                
            case .division:
                
                let dividend = Double(textFieldSaveValue)!
                let divisor = Double(textFieldValue)!
                let quotient = dividend / divisor
                let remainder = dividend.truncatingRemainder(dividingBy: divisor)
                // let check = String((quotient * divisor) + remainder)
                textFieldValue = String(quotient)
                
            }
        }
    }
}
