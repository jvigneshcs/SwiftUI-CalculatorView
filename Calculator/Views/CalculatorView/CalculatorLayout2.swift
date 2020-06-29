//
//  CalculatorLayout2.swift
//  Calculator
//
//  Created by Vignesh J on 25/06/20.
//  Copyright © 2020 Vignesh J. All rights reserved.
//

import SwiftUI

struct CalculatorLayout2: View {
  
  var body: some View {
    VStack {
      HStack {
        self.theme.resultText
      }
      GeometryReader { geometryReader in
        InternalCalculatorLayout(theme: self.theme,
                                 parentWidth: geometryReader.size.width,
                                 buttonSize: self.sizeOfButton(forStackSize: geometryReader.size))
          .frame(minWidth: 0, maxWidth: .infinity, alignment: .bottom)
      }
    }
    .background(self.theme.backgroundColor)
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
  }
  
  private(set) var theme: CalculatorViewThemeable
  @State private var buttonSize: CGSize = CGSize(width: 60, height: 60)
  
  init(theme: CalculatorViewThemeable = CalculatorViewTheme1()) {
    self.theme = theme
  }
  
  private func sizeOfButton(forStackSize size: CGSize) -> CGSize {
    let maxWidth = (size.width / 4)
    let maxHeight = (size.height / 5)
    let width = min(maxWidth, maxHeight)
    return CGSize(width: width, height: width)
  }
}

extension CalculatorLayout2: CalculatorLayoutable {
  
}

fileprivate struct InternalCalculatorLayout: View {
  
  var body: some View {
    VStack {
      HStack(spacing: 0) {
        
        self.theme.clearButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.plusMinusButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.percentButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.divideButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
      }
      
      HStack(spacing: 0) {
        
        self.theme.sevenButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.eightButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.nineButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.multiplyButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
      }
      
      HStack(spacing: 0) {
        
        self.theme.fourButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.fiveButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.sixButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.minusButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
      }
      
      HStack(spacing: 0) {
        
        self.theme.oneButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.twoButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.threeButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.addButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
      }
      
      HStack(spacing: 0) {
        
        self.theme.zeroButton
          .padding(5)
          .frame(width: self.widthForZeroButton(), height: self.buttonSize.height)
        
        
        self.theme.dotButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        
        self.theme.equalButton
          .padding(5)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
      }
    }
  }
  
  private let theme: CalculatorViewThemeable
  private let parentWidth: CGFloat
  private let buttonSize: CGSize
  
  init(theme: CalculatorViewThemeable,
       parentWidth: CGFloat,
       buttonSize: CGSize) {
    self.theme = theme
    self.parentWidth = parentWidth
    self.buttonSize = buttonSize
  }
  
  private func widthForZeroButton() -> CGFloat {
    let buttonsWidth = self.buttonSize.width * 4
    let spacersWidth = self.parentWidth - buttonsWidth
    let spacerWidth = spacersWidth / 5
    let buttonWidth = (self.buttonSize.width * 2) + spacerWidth
    return buttonWidth
  }
}

struct CalculatorLayout2_Previews: PreviewProvider {
  static var previews: some View {
    CalculatorLayout2(theme: CalculatorViewTheme2())
  }
}
