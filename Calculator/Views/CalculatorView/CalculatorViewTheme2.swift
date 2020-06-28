//
//  CalculatorViewTheme2.swift
//  Calculator
//
//  Created by Vignesh J on 27/06/20.
//  Copyright © 2020 Vignesh J. All rights reserved.
//

import SwiftUI

struct CalculatorViewTheme2: CalculatorViewThemeable {
  var backgroundColor: Color {
    return .black
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
        .cornerRadius(.infinity)
        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
    )
  }
  
  var oneButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "1", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackground)
    )
  }
  
  var twoButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "2", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackground)
    )
  }
  
  var threeButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "3", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackground)
    )
  }
  
  var fourButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "4", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackground)
    )
  }
  
  var fiveButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "5", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackground)
    )
  }
  
  var sixButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "6", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackground)
    )
  }
  
  var sevenButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "7", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackground)
    )
  }
  
  var eightButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "8", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackground)
    )
  }
  
  var nineButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "9", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackground)
    )
  }
  
  var dotButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: ".", action: {}, theme: CalculatorButtonTheme1())
        .background(numberBackground)
    )
  }
  
  var clearButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "AC", action: {}, theme: CalculatorButtonTheme2())
        .background(secondaryOperatorBackground)
    )
  }
  
  var plusMinusButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "+/-", action: {}, theme: CalculatorButtonTheme2())
        .background(secondaryOperatorBackground)
    )
  }
  
  var addButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "+", action: {}, theme: CalculatorButtonTheme1())
        .background(primaryOperatorBackground)
    )
  }
  
  var minusButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "-", action: {}, theme: CalculatorButtonTheme1())
        .background(primaryOperatorBackground)
    )
  }
  
  var multiplyButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "×", action: {}, theme: CalculatorButtonTheme1())
        .background(primaryOperatorBackground)
    )
  }
  
  var divideButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "÷", action: {}, theme: CalculatorButtonTheme1())
        .background(primaryOperatorBackground)
    )
  }
  
  var percentButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "%", action: {}, theme: CalculatorButtonTheme2())
        .background(secondaryOperatorBackground)
    )
  }
  
  var equalButton: AnyView {
    return AnyView(
      CalculatorButtonView(text: "=", action: {}, theme: CalculatorButtonTheme1())
        .background(primaryOperatorBackground)
    )
  }
  
  private var primaryOperatorBackgroundColor = Color.orange
  private var secondaryOperatorBackgroundColor = Color(red: 165.0/255.0, green: 165.0/255.0, blue: 165.0/255.0)
  private var numberBackgroundColor = Color(red: 51.0/255.0, green: 51.0/255.0, blue: 51.0/255.0)
  
  private var primaryOperatorBackground: AnyView {
    return AnyView(
      Circle()
        .fill(primaryOperatorBackgroundColor)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .padding(5)
    )
  }
  
  private var secondaryOperatorBackground: AnyView {
    return AnyView(
      Circle()
        .fill(secondaryOperatorBackgroundColor)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .padding(5)
    )
  }
  
  private var numberBackground: AnyView {
    return AnyView(
      Circle()
        .fill(numberBackgroundColor)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .padding(5)
    )
  }
}
