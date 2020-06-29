//
//  MasterCalculatorView.swift
//  Calculator
//
//  Created by Vignesh J on 28/06/20.
//  Copyright © 2020 Vignesh J. All rights reserved.
//

import SwiftUI

struct MasterCalculatorView: View {
  var body: some View {
    VStack {
      self.calculatorView
    }
    .gesture(
      DragGesture()
        .onEnded {
          let translationWidth = $0.translation.width
          if translationWidth > 100 {
            self.calculatorView = self.supportedView(at: self.selectedIndex - 1)
          } else if translationWidth < -100 {
            self.calculatorView = self.supportedView(at: self.selectedIndex + 1)
          }
      }
    )
  }
  
  @State private var calculatorView: AnyView = AnyView(CalculatorLayout1())
  @State private var selectedIndex = 0
  private let supportedViews = [
    AnyView(CalculatorLayout1(theme: CalculatorViewTheme1())),
    AnyView(CalculatorLayout2(theme: CalculatorViewTheme2())),
    AnyView(CalculatorLayout2(theme: CalculatorViewTheme3()))
  ]
  
  private func supportedView(at index: Int) -> AnyView {
    let lastIndex = self.supportedViews.count - 1
    let selectedIndex = max(0, min(index, lastIndex))
    self.selectedIndex = selectedIndex
    return self.supportedViews[selectedIndex]
  }
}

struct MasterCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        MasterCalculatorView()
    }
}
