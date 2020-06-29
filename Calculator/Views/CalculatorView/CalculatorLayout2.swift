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
    GeometryReader { geometryReader in
      VStack {
        HStack {
          self.theme.resultText
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: self.heightOfResultText(forStackSize: geometryReader.size), alignment: .bottom)
        InternalCalculatorLayout(theme: self.theme,
                                 parentWidth: geometryReader.size.width,
                                 buttonSize: self.sizeOfButton(forStackSize: geometryReader.size))
          .frame(minWidth: 0, maxWidth: .infinity, alignment: .bottom)
      }
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
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
    let maxHeight = (size.height / 6)
    let width = min(maxWidth, maxHeight)
    return CGSize(width: width, height: width)
  }
  
  private func heightOfResultText(forStackSize size: CGSize) -> CGFloat {
    let buttonSize = self.sizeOfButton(forStackSize: size)
    let buttonsHeight = buttonSize.height * 5
    return size.height - buttonsHeight
  }
}

extension CalculatorLayout2: CalculatorLayoutable {
  
}

fileprivate struct InternalCalculatorLayout: View {
  
  var body: some View {
    VStack {
      HStack(spacing: 0) {
        Spacer(minLength: 0)
        self.theme.clearButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.plusMinusButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.percentButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.divideButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        Spacer(minLength: 0)
      }
      
      HStack(spacing: 0) {
        Spacer(minLength: 0)
        self.theme.sevenButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.eightButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.nineButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.multiplyButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        Spacer(minLength: 0)
      }
      
      HStack(spacing: 0) {
        Spacer(minLength: 0)
        self.theme.fourButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.fiveButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.sixButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.minusButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        Spacer(minLength: 0)
      }
      
      HStack(spacing: 0) {
        Spacer(minLength: 0)
        self.theme.oneButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.twoButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.threeButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.addButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        Spacer(minLength: 0)
      }
      
      HStack(spacing: 0) {
        Spacer(minLength: 0)
        self.theme.zeroButton
          .padding(self.buttonPadding)
          .frame(width: self.widthForZeroButton(), height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.dotButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        
        Spacer(minLength: 0)
        self.theme.equalButton
          .padding(self.buttonPadding)
          .frame(width: self.buttonSize.width, height: self.buttonSize.height)
        Spacer(minLength: 0)
      }
    }
  }
  
  private let theme: CalculatorViewThemeable
  private let parentWidth: CGFloat
  private let buttonSize: CGSize
  private let buttonPadding: CGFloat = 8
  
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
