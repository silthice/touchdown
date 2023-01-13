//
//  Image+Extension.swift
//  Touchdown
//
//  Created by Giap on 13/01/2023.
//

import SwiftUI

extension Image {
    func resizeFit() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func resizeFill() -> some View {
        self
            .resizable()
            .scaledToFill()
    }
}
