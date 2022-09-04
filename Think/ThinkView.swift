//
//  ThinkView.swift
//  Think
//
//  Created by 1 on 04/09/2022.
//

import SwiftUI

struct ThinkView: View {
  @State var currentThink = "Сначала делай то, что нужно сделать сначала."
  
  var body: some View {
    ZStack {
      Color("BackgroundPrimary")
        .ignoresSafeArea()
      CurrentThinkView(think: currentThink, author: "Kolin Ktototam")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ThinkView()
      .preferredColorScheme(.dark)
  }
}
