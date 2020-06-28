//
//  CalculatorButtonView.swift
//  Calculator
//
//  Created by Vignesh J on 26/06/20.
//  Copyright © 2020 Vignesh J. All rights reserved.
//

import SwiftUI

struct CalculatorButtonView: View {
  
  var text: String
  var action: () -> Void
  var theme: CalculatorButtonViewThemeable
  
  var body: some View {
    theme.button(text: text, action: action)
  }
}

struct CalCalculatorButtonViewiews: PreviewProvider {
  static var previews: some View {
    CalculatorButtonView(text: "1", action: {}, theme: CalculatorButtonTheme1())
  }
}
