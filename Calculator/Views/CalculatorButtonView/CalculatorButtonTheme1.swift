//
//  CalculatorButtonTheme1.swift
//  Calculator
//
//  Created by Vignesh J on 27/06/20.
//  Copyright © 2020 Vignesh J. All rights reserved.
//

import SwiftUI

struct CalculatorButtonTheme1: CalculatorButtonViewThemeable {
  func button(text: String, action: @escaping () -> Void) -> AnyView {
    return AnyView(
      Button(action: action) {
        Text(text)
          .font(.title)
          .foregroundColor(Color.white)
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
      }
      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    )
  }
}
