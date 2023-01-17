//
//  ProductModel.swift
//  Touchdown
//
//  Created by Giap on 15/01/2023.
//

import SwiftUI

struct Product: Identifiable, Codable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var formattedPrice: String { return "$\(price)"}
    
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    
    var rgbColor: Color {
        return Color(red: color[0], green: color[1], blue: color[2])
    }
}
