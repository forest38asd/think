//
//  ThinkView.swift
//  Think
//
//  Created by 1 on 04/09/2022.
//

import SwiftUI

struct ThinkView: View {
  @State var currentThink = "Сначала делай то, что нужно сделать сначала."
  @State var italic = false
  
  var body: some View {
    NavigationView {
      CurrentThinkView(think: currentThink, author: "Kolin Ktototam")
        .padding(.bottom, 40)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .navigationBarTrailing) {
            gearLinkView
          }
        }
        .themeBackground()
    }
  }
  
  var gearLinkView: some View {
    NavigationLink(destination: { SettingsView() }) {
      Image(systemName: "gearshape")
        .foregroundColor(.secondary)
    }
  }
}

struct ThinkView_Previews: PreviewProvider {
  static var previews: some View {
    ThinkView()
      .preferredColorScheme(.dark)
  }
}
