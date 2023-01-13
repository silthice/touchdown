//
//  Text+Extension.swift
//  Touchdown
//
//  Created by Giap on 13/01/2023.
//

import SwiftUI

extension Text {
    func fontModifier(font: Font, foregroundColor: Color) -> some View {
        self
            .font(font)
            .foregroundColor(foregroundColor)
    }
}
