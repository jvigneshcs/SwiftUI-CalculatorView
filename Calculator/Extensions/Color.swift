//
//  Color.swift
//  Calculator
//
//  Created by Vignesh J on 28/06/20.
//  Copyright © 2020 Vignesh J. All rights reserved.
//

import SwiftUI

extension Color {
  
  init(gray: Double) {
    self = Color(red: gray, green: gray, blue: gray)
  }
  
  init(gray: Int) {
    guard gray >= 0 && gray <= 255 else {
      self = Color.gray
      return
    }
    let grayDouble = Double(gray)
    self = Color(red: grayDouble / 255.0, green: grayDouble / 255.0, blue: grayDouble / 255.0)
  }
}
