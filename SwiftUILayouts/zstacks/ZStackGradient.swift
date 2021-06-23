//
//  ZStackGradient.swift
//  SwiftUILayouts
//
//  Created by bogdanov on 23.06.21.
//

import SwiftUI

extension Color {
    static let bright = Color.blue
    static let dark = Color(#colorLiteral(red: 0.5, green: 0.2304063421, blue: 0.2242844466, alpha: 1))
}

struct ZStackGradient: View {
    let gradient = LinearGradient(
        gradient: Gradient(
            stops: [
                .init(color: .bright, location: CGFloat(3.0 / 8.0)),
                .init(color: .dark, location: 1)
            ]
        ),
        startPoint: .topTrailing, endPoint: .bottom
    )

    var body: some View {
        ZStack(alignment: .center) {
            Image("grancanaria")
                .resizable()
                .scaledToFit()

            gradient
                .blendMode(.multiply)
                .layoutPriority(-1)

            VStack(alignment: .trailing) {
                Image("ZStack")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)

                Text("Wonderful Days!")
                    .fontWeight(.semibold)
                    .foregroundColor(.bright)
            }
            .alignmentGuide(HorizontalAlignment.center) { $0[.trailing] }
            .alignmentGuide(VerticalAlignment.center) { $0[.top] }
        }
    }
}

struct ZStackGradient_Previews: PreviewProvider {
    static var previews: some View {
        ZStackGradient()
    }
}
