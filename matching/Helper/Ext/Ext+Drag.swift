//
//  Ext+Drag.swift
//  matching
//
//  Created by Mac on 05/02/24.
//

import Foundation
import SwiftUI
struct Draggable: ViewModifier {
    let condition: Bool
    let data: () -> NSItemProvider

    @ViewBuilder
    func body(content: Content) -> some View {
        if condition {
            content.onDrag(data)
        } else {
            content
        }
    }
}

// @available(iOS 13.4, *) - needed for iOS
extension View {
    public func drag(if condition: Bool, data: @escaping () -> NSItemProvider) -> some View {
        self.modifier(Draggable(condition: condition, data: data))
    }
}
