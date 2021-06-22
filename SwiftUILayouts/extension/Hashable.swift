//
//  Hashable.swift
//  SwiftUILayouts
//
//  Created by bogdanov on 22.06.21.
//

public extension Hashable where Self: Identifiable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
