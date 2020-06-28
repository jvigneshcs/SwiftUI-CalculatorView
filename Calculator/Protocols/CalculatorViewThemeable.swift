//
//  CalculatorViewThemeable.swift
//  Calculator
//
//  Created by Vignesh J on 27/06/20.
//  Copyright © 2020 Vignesh J. All rights reserved.
//

import SwiftUI

protocol CalculatorViewThemeable {
  var backgroundColor: Color { get }
  var resultText: AnyView { get }
  var zeroButton: AnyView { get }
  var oneButton: AnyView { get }
  var twoButton: AnyView { get }
  var threeButton: AnyView { get }
  var fourButton: AnyView { get }
  var fiveButton: AnyView { get }
  var sixButton: AnyView { get }
  var sevenButton: AnyView { get }
  var eightButton: AnyView { get }
  var nineButton: AnyView { get }
  var dotButton: AnyView { get }
  
  var clearButton: AnyView { get }
  
  var plusMinusButton: AnyView { get }
  var addButton: AnyView { get }
  var minusButton: AnyView { get }
  var multiplyButton: AnyView { get }
  var divideButton: AnyView { get }
  var percentButton: AnyView { get }
  var equalButton: AnyView { get }
}
