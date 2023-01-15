//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Giap on 15/01/2023.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPERTIES
    let product: Product
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            //PHOTO
            ZStack {
                Image(product.image)
                    .resizeFit()
                .padding(10)
            }//: ZStack
            .background(product.rgbColor)
            .cornerRadius(12)
            
            //NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            //PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }//: VStack
    }
}

//MARK: - PREVIEW
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
