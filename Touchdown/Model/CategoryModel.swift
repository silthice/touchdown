//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Giap on 13/01/2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
