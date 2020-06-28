//
//  CalculatorButtonViewThemeable.swift
//  Calculator
//
//  Created by Vignesh J on 27/06/20.
//  Copyright © 2020 Vignesh J. All rights reserved.
//

import SwiftUI

protocol CalculatorButtonViewThemeable {
  func button(text: String, action: @escaping () -> Void) -> AnyView
}
