//
//  StackViews.swift
//  SwiftUILayouts
//
//  Created by bogdanov on 23.06.21.
//

import SwiftUI

struct TweetStackViews: View {
    var body: some View {
        let cornerRadius: CGFloat = 7.5

        return HStack(alignment: .top) {
            VStack {
                Image("olek")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .cornerRadius(cornerRadius)
                    .overlay(
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .stroke(Color.white, lineWidth: 2.5)
                    )

                Text("Following")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(Color.blue)
                    .clipShape(Capsule())
            }
            VStack(alignment: .leading) {
                Text("oleksandr.com")
                    .font(.headline)
                    .foregroundColor(.white)

                HStack(alignment: .lastTextBaseline) {
                    Text("@bogdanov")
                        .font(.subheadline)
                        .foregroundColor(.white)

                    Text("FOLLOWS YOU")
                        .font(.caption)
                        .foregroundColor(.init(white: 0.4))
                        .padding(.horizontal, 10)
                        .background(Color(white: 0.9))
                        .clipShape(Capsule())
                }

                Text(
                    "This week we will talk about another great tool that we have in SwiftUI. The alignment guide is a way that we can use to speak to SwiftUI’s layout system. By using alignment guides, we can easily align views that live in different parts of a view hierarchy."
                )
                .padding(.top, 5)
                .lineSpacing(-.infinity)
            }
        }
    }
}

struct StackViews_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(red: 0.55, green: 0.45, blue: 0.75)
            TweetStackViews()
        }
        .edgesIgnoringSafeArea(.all)
    }
}
