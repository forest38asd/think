//
//  CurrentThinkView.swift
//  Think
//
//  Created by 1 on 04/09/2022.
//

import SwiftUI

struct CurrentThinkView: View {
  var think: Think
  
  var body: some View {
    VStack(alignment: .trailing, spacing: 12.0) {
      Text(think.text)
        .font(.headline)
      if let author = think.author {
        HStack {
          Text(author)
            .font(.subheadline)
            .foregroundColor(Color(hue: 1.0, saturation: 0.023, brightness: 0.771))
            .fontWeight(.semibold)
        }
      }
    }
    .padding()
  }
}

struct CurrentThinkView_Previews: PreviewProvider {
  static var previews: some View {
    CurrentThinkView(think: Think(text: "Сначала сделай то, что нужно сделать сначала.", author: "Автор неизвестен (нет)"))
      .previewLayout(.sizeThatFits)
    
    CurrentThinkView(think: Think(text: "Сначала сделай то, что нужно сделать сначала.", author: "Автор неизвестен (нет)"))
      .preferredColorScheme(.dark)
      .previewLayout(.sizeThatFits)
  }
}
