//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Giap on 17/01/2023.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    //MARK: - PROPERTIES
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            //RATINGS
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .fontModifier(font: .footnote, foregroundColor: colorGray)
                    .fontWeight(.semibold)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id:\.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    } //: End of ForEach
                }) //: End of HStack
            }) //: End of VStack
            
            Spacer()
            
            //SIZES
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .fontModifier(font: .footnote, foregroundColor: colorGray)
                    .fontWeight(.semibold)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(sizes, id:\.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .fontModifier(font: .footnote, foregroundColor: colorGray)
                                .fontWeight(.heavy)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        })
                    } //: End of ForEach
                }) //: End of HStack
            }) //: End of VStack
        }) //: End of HSTack
        
    }
}

//MARK: - PREVIEW
struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
