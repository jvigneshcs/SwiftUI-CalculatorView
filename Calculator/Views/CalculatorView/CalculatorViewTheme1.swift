//
//  CalculatorViewTheme1.swift
//  Calculator
//
//  Created by Vignesh J on 27/06/20.
//  Copyright © 2020 Vignesh J. All rights reserved.
//

import SwiftUI

struct CalculatorViewTheme1: CalculatorViewThemeable {
  var backgroundColor: Color {
    return Color(gray: 50)
  }
  
  var resultText: AnyView {
    return AnyView(
      Text("0")
        .font(.largeTitle)
        .foregroundColor(Color.white)
        .lineLimit(1)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .trailing)
        .padding()
    )
  }
  
  var zeroButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "0", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackgroundColor)
    )
  }
  
  var oneButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "1", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackgroundColor)
    )
  }
  
  var twoButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "2", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackgroundColor)
    )
  }
  
  var threeButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "3", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackgroundColor)
    )
  }
  
  var fourButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "4", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackgroundColor)
    )
  }
  
  var fiveButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "5", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackgroundColor)
    )
  }
  
  var sixButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "6", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackgroundColor)
    )
  }
  
  var sevenButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "7", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackgroundColor)
    )
  }
  
  var eightButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "8", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackgroundColor)
    )
  }
  
  var nineButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "9", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackgroundColor)
    )
  }
  
  var dotButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: ".", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackgroundColor)
    )
  }
  
  var clearButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "AC", action: {}, theme: CalculatorButtonTheme1())
        .background(secondaryOperatorBackgroundColor)
    )
  }
  
  var plusMinusButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "+/-", action: {}, theme: CalculatorButtonTheme1())
        .background(secondaryOperatorBackgroundColor)
    )
  }
  
  var addButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "+", action: {}, theme: CalculatorButtonTheme1())
        .background(primaryOperatorBackgroundColor)
    )
  }
  
  var minusButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "-", action: {}, theme: CalculatorButtonTheme1())
        .background(primaryOperatorBackgroundColor)
    )
  }
  
  var multiplyButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "×", action: {}, theme: CalculatorButtonTheme1())
        .background(primaryOperatorBackgroundColor)
    )
  }
  
  var divideButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "÷", action: {}, theme: CalculatorButtonTheme1())
        .background(primaryOperatorBackgroundColor)
    )
  }
  
  var percentButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "%", action: {}, theme: CalculatorButtonTheme1())
        .background(secondaryOperatorBackgroundColor)
    )
  }
  
  var equalButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "=", action: {}, theme: CalculatorButtonTheme1())
        .background(primaryOperatorBackgroundColor)
    )
  }
  
  private var primaryOperatorBackgroundColor = Color.orange
  private var secondaryOperatorBackgroundColor = Color(gray: 70)
  private var numberBackgroundColor = Color(gray: 100)
}
