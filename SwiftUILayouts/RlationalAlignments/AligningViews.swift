//
//  AligningViews.swift
//  SwiftUILayouts
//
//  Created by bogdanov on 23.06.21.
//

import SwiftUI

struct AligningViews: View {
    var body: some View {
        List(Razémon.all, id: \.name) { razémon in
            HStack(alignment: .razèmon) {
                Image(razémon.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
                    .alignmentGuide(.razèmon) {
                        $0[.bottom] * razémon.eyePosition
                    }
                VStack(alignment: .leading, spacing: 15) {
                    Text(razémon.name)
                        .fontWeight(.heavy)
                    Text(razémon.description)
                        .alignmentGuide(Razémon.self)
//                        .alignmentGuide(.razèmon, computeValue: Razémon.defaultValue)
                    Text("💎 \(razémon.cost)")
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
            }
        }
    }
}

// extension Razémon: AlignmentID {
//    static func defaultValue(in context: ViewDimensions) -> CGFloat {
//        context[.top]
//    }
// }

extension Razémon: SingleAxisAlignmentID {
    typealias Alignment = VerticalAlignment

    static func defaultValue(in context: ViewDimensions) -> CGFloat {
        context[.top]
    }
}

extension VerticalAlignment {
    static let razèmon = Self(Razémon.self)
}

struct AligningViews_Previews: PreviewProvider {
    static var previews: some View {
        AligningViews()
    }
}
