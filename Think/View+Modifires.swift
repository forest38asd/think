//
//  View+Modifires.swift
//  Think
//
//  Created by 1 on 04/09/2022.
//

import SwiftUI

struct ThemeBackground: ViewModifier {
  var color = Color("BackgroundPrimary")
  
  func body(content: Content) -> some View {
    ZStack {
      color
        .ignoresSafeArea()
      content
    }
  }
}

extension View {
  func themeBackground() -> some View {
    modifier(ThemeBackground())
  }
}
