//
//  BadgeIcon.swift
//  SwiftUILayouts
//
//  Created by bogdanov on 23.06.21.
//

import SwiftUI

struct BadgeIcon: View {
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .bottomTrailing) {
                Image("Catground")
                    .resizable()
                    .scaledToFit()
                let badgeWidth = proxy.size.width / 3
                Image("Badge")
                    .resizable()
                    .scaledToFit()
                    .frame(width: badgeWidth)
                    .layoutPriority(-1)
                    .offset(x: badgeWidth / 9, y: badgeWidth / 9)
            }
        }.frame(width: 300)
    }
}

struct BadgeIcon2: View {
    var body: some View {
        GeometryReader { proxy in
            Image("Catground")
                .resizable()
                .scaledToFit()
                .overlay(
                    Image("Badge")
                        .resizable()
                        .scaledToFit()
                        .frame(width: proxy.size.width / 3)
                        .layoutPriority(-1)
                        .padding(-proxy.size.width / 30), alignment: .bottomTrailing)

        }.frame(width: 300)
    }
}

struct BadgeIcon_Previews: PreviewProvider {
    static var previews: some View {
        BadgeIcon()
        BadgeIcon2()
    }
}
