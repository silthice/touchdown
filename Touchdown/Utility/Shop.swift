//
//  Shop.swift
//  Touchdown
//
//  Created by Giap on 17/01/2023.
//

import Foundation

//ObservableObject allows instance of class to be used in other views
class Shop: ObservableObject {
//    Published modifier highlight properties that changes will reload
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
