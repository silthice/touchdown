//
//  TopBarDetailView.swift
//  Touchdown
//
//  Created by Giap on 17/01/2023.
//

import SwiftUI

struct TopBarDetailView: View {
    //MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            //PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizeFit()
                .offset(y: isAnimating ? 0 : -35)
            
        })  //: End of HStack
        .onAppear(perform: {
            withAnimation(.easeIn(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

//MARK: - PREVIEW
struct TopBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
