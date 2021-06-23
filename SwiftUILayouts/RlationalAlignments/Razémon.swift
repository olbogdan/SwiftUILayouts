//
//  Razémon.swift
//  SwiftUILayouts
//
//  Created by bogdanov on 23.06.21.
//

import struct CoreGraphics.CGFloat

struct Razémon {
    let name: String
    let description: String
    let cost: Int

    /// 0-1 value describing how far down the eyes are in the Razémon's image
    let eyePosition: CGFloat
}

extension Razémon {
    static let all = [
        Razémon(
            name: "Onetalez",
            description: """
            Uses its tail like a pogo stick, instead of bothering with hind legs.
            Really cuts down on excess weight when climbing your curtains.
            """,
            cost: 999_999_999,
            eyePosition: 0.39
        ),
        Razémon(
            name: "Fënröwlf",
            description: """
            Can change into motörcycle form.
            Otherwise, fluffy as a clöüd!
            """,
            cost: 7777,
            eyePosition: 0.32
        ),
        Razémon(
            name: "Pezzeria Trio",
            description: """
            Pez in the morning.
            Pez in the evening.
            Pez at suppertime!
            """,
            cost: 36,
            eyePosition: 0.24
        ),
        Razémon(
            name: "Beakmon",
            description: """
            Tell me have have you heard about this bird?
            In the lab, his experiments go pop-and-boom.
                                                     OW!
            Wow!
            """,
            cost: 14_12_1951,
            eyePosition: 0.23
        )
    ]
}
