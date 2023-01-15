//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Giap on 15/01/2023.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }//: ForEach
            })//: LazyHGrid
            .frame(height: 200)
//            .padding(15)
            .padding(.horizontal, 15)
            .padding(.bottom, 15)
        }//: ScrollView
    }
}

//MARK: - PREVIEW
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
