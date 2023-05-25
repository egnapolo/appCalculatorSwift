//
//  SwiftUIView.swift
//  Calculadora
//
//  Created by Egna Lizeth Polo Rubiano on 23/5/23.
//

import SwiftUI

struct SeccionView: View {
    @ObservedObject var viewModel: ViewModel
    
    let data: [KeyboardButton]
    let columns: [GridItem]
    let width: CGFloat
    
    init(viewModel: ViewModel, data: [KeyboardButton], columns: [GridItem], width: CGFloat) {
        self.data = data
        self.columns = columns
        self.width = width
        self.viewModel = viewModel
    }
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 5) {
            ForEach(data, id: \.self) { model in
                Button {
                    viewModel.logic(key: model)
                } label: {
                    if model.isDoubleWidth {
                        Rectangle()
                            .foregroundColor(model.backgroundColor)
                            .overlay(Text(model.character)
                                .font(.largeTitle)
                                .offset(x: width * 0.20 * 0.5)
                            ).frame(width: width * 2 * 0.20, height: width * 0.20)
                         
                        
                    }else {
                        Text(model.character)
                            .font(.largeTitle)
                            .frame(width: width * 0.20, height: width * 0.20)
                    }
                }.foregroundColor(model.textColor)
                    .background(model.backgroundColor)
                    .cornerRadius(width * 0.25)

            }
        }.frame(width: width)
    }
    
}

struct SeccionView_Previews: PreviewProvider {
    static var previews: some View {
        SeccionView(viewModel: ViewModel(),data: Matrix.firstSectionData, columns: Matrix.firsSectionGrid(390 * 0.20), width: 390)
            .previewLayout(.sizeThatFits)
        SeccionView(viewModel: ViewModel() ,data: Matrix.secondSectionData, columns: Matrix.secondSectionGrid(390 * 0.20), width: 390)
            .previewLayout(.sizeThatFits)
    }
}
