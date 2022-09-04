//
//  SettingsView.swift
//  Think
//
//  Created by 1 on 04/09/2022.
//

import SwiftUI

struct SettingsView: View {
  let thinks = [
    Think(text: "Test", author: "Test")
  ]
  
  var body: some View {
    VStack {
      
    }
    .navigationTitle("Settings")
    .navigationBarTitleDisplayMode(.inline)
    .themeBackground()
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      SettingsView()
        .preferredColorScheme(.dark)
    }
  }
}
