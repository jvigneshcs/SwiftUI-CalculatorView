//
//  CalculatorView.swift
//  Calculator
//
//  Created by Vignesh J on 25/06/20.
//  Copyright © 2020 Vignesh J. All rights reserved.
//

import SwiftUI

struct CalculatorView: View {
  
  var body: some View {
    VStack(spacing: 2) {
      HStack {
        self.theme.resultText
      }
      
      HStack(spacing: 2) {
        self.theme.clearButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        
        self.theme.plusMinusButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        
        self.theme.percentButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        self.theme.divideButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      }
      .padding(EdgeInsets(top: 0, leading: 2, bottom: 0, trailing: 2))
      
      
      HStack(spacing: 2) {
        self.theme.sevenButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        
        self.theme.eightButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        
        self.theme.nineButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        
        self.theme.multiplyButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      }
      .padding(EdgeInsets(top: 0, leading: 2, bottom: 0, trailing: 2))
      
      HStack(spacing: 2) {
        self.theme.fourButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        
        self.theme.fiveButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        
        self.theme.sixButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        
        self.theme.minusButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      }
      .padding(EdgeInsets(top: 0, leading: 2, bottom: 0, trailing: 2))
      
      HStack(spacing: 2) {
        self.theme.oneButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        
        self.theme.twoButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        
        self.theme.threeButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        
        
        self.theme.addButton
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      }
      .padding(EdgeInsets(top: 0, leading: 2, bottom: 0, trailing: 2))
      
      GeometryReader { geo in
        HStack(spacing: 2) {
          self.theme.zeroButton
            .frame(minWidth: 0, maxWidth: (geo.size.width / 2) + 2, minHeight: 0, maxHeight: .infinity)
          
          
          self.theme.dotButton
            .frame(minWidth: 0, maxWidth: (geo.size.width / 4) - 1.5, minHeight: 0, maxHeight: .infinity)
          
          
          self.theme.equalButton
            .frame(minWidth: 0, maxWidth: (geo.size.width / 4) - 1.5, minHeight: 0, maxHeight: .infinity)
        }
      }
      .padding(EdgeInsets(top: 0, leading: 2, bottom: 0, trailing: 2))
    }
    .background(self.theme.backgroundColor)
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
  }
  
  private var theme: CalculatorViewThemeable
  
  init(theme: CalculatorViewThemeable = CalculatorViewTheme1()) {
    self.theme = theme
  }
}

struct CalculatorView_Previews: PreviewProvider {
  static var previews: some View {
    CalculatorView(theme: CalculatorViewTheme2())
  }
}
