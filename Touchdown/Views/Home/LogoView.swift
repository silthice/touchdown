//
//  LogoView.swift
//  Touchdown
//
//  Created by Giap on 13/01/2023.
//

import SwiftUI

struct LogoView: View {
    
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .fontModifier(font: .title3, foregroundColor: .black)
                .fontWeight(.black)
            
            Image("logo-dark")
                .resizeFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .fontModifier(font: .title3, foregroundColor: .black)
                .fontWeight(.black)
            
        }//: HStack
    }
}


//MARK: - PREVIEW
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
