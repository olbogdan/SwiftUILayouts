//
//  BlurView.swift
//  SwiftUILayouts
//
//  Created by bogdanov on 22.06.21.
//

import protocol SwiftUI.UIViewRepresentable
import UIKit

public extension UIBlurEffect {
    struct View {
        let blurStyle: Style
    }
}

// MARK: - UIViewRepresentable

extension UIBlurEffect.View: UIViewRepresentable {
    public func makeUIView(context _: Context) -> UIVisualEffectView {
        .init(effect: UIBlurEffect(style: blurStyle))
    }
}
