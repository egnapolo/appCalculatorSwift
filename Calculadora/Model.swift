//
//  Model.swift
//  Calculadora
//
//  Created by Egna Lizeth Polo Rubiano on 23/5/23.
//

import Foundation
import SwiftUI

struct KeyboardButton: Hashable {
    let character: String
    let textColor: Color
    let backgroundColor: Color
    let isDoubleWidth: Bool
    let type: ButtonType
}
enum ButtonType: Hashable {
    case number(Int)
    case operation(OperationType)
    case result
    case reset
}

enum OperationType: Hashable {
    case sum
    case multiplication
    case rest
    case division
}
