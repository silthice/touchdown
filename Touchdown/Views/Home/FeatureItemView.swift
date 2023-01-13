//
//  FeatureItemView.swift
//  Touchdown
//
//  Created by Giap on 13/01/2023.
//

import SwiftUI

struct FeatureItemView: View {
    
    //MARK: - PROPERTIES
    let player: Player
    
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizeFit()
            .cornerRadius(12)
    }
}

//MARK: - PREVIEW
struct FeatureItemView_Previews: PreviewProvider {
    static var previews: some View {
        //players from constant created
        FeatureItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
