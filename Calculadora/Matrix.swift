//
//  Matrix.swift
//  Calculadora
//
//  Created by Egna Lizeth Polo Rubiano on 23/5/23.
//

import Foundation
import UIKit
import SwiftUI

struct Matrix {
  static let firstSectionData: [KeyboardButton] = [
        .init(character: "AC", textColor: .black, backgroundColor: customLightGray, isDoubleWidth: false, type: .reset),
        .init(character: "+/-", textColor: .black, backgroundColor: customLightGray, isDoubleWidth: false, type: .reset),
        .init(character: "%", textColor: .black, backgroundColor: customLightGray, isDoubleWidth: false, type: .reset),
        .init(character: "/", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.division)),
        
        .init(character: "7", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(7)),
        .init(character: "8", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(8)),
        .init(character: "9", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(9)),
        .init(character: "X", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.multiplication)),
        
        .init(character: "4", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(4)),
        .init(character: "5", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(5)),
        .init(character: "6", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(6)),
        .init(character: "-", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.rest)),
        
        .init(character: "1", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(1)),
        .init(character: "2", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(2)),
        .init(character: "3", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .number(3)),
        .init(character: "+", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.sum)),
    ]
    
    static let secondSectionData: [KeyboardButton] = [
        .init(character: "0", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: true, type: .number(0)),
        .init(character: ",", textColor: .white, backgroundColor: customDarkGray, isDoubleWidth: false, type: .reset),
        .init(character: "=", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .result),
    ]
    
    static let firsSectionGrid: (CGFloat) -> [GridItem] = { width in
        return Array(repeating: GridItem(.flexible(minimum: width), spacing: 0), count: 4)
    }
    
    static let secondSectionGrid: (CGFloat) -> [GridItem] = { width in
        return [
            GridItem(.flexible(minimum: width * 2), spacing: 0),
            GridItem(.flexible(minimum: width), spacing: 0),
            GridItem(.flexible(minimum: width), spacing: 0),
        ]
        
    }
}


