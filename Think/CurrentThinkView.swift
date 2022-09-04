//
//  CurrentThinkView.swift
//  Think
//
//  Created by 1 on 04/09/2022.
//

import SwiftUI

struct CurrentThinkView: View {
  var think: String
  var author: String?
  
  var body: some View {
    VStack(alignment: .trailing, spacing: 12.0) {
      Text(think)
        .font(.headline)
      if let author = author {
        HStack {
          Text(author)
            .font(.subheadline)
        }
      }
    }
    .padding()
  }
}

struct CurrentThinkView_Previews: PreviewProvider {
  static var previews: some View {
    CurrentThinkView(think: "Сначала сделай то, что нужно сделать сначала.", author: "Автор неизвестен (нет)")
      .previewLayout(.sizeThatFits)
    
    CurrentThinkView(think: "Сначала сделай то, что нужно сделать сначала.", author: "Автор неизвестен (нет)")
      .preferredColorScheme(.dark)
      .previewLayout(.sizeThatFits)
  }
}
