//
//  Ext+Font.swift
//  matching
//
//  Created by Mac on 29/01/24.
//

import Foundation
import SwiftUI



extension Font {
    enum SnigletFont {
        case bold
        case regular
        var value: String {
            switch self {
            case .regular:
                return "Sniglet-Regular"
            
            case .bold:
                return "Sniglet-ExtraBold"
            }
        }
    }
    static func sniglet(_ type: SnigletFont, size: CGFloat = 26) -> Font {
        return .custom(type.value, size: size)
    }
}
