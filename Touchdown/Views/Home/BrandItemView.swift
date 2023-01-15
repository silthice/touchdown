//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Giap on 15/01/2023.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPERTIES
    let brand: Brand
    
    //MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizeFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1)
            )
    }
}

//MARK: - PREVIEW
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
