//
//  ContentView.swift
//  Touchdown
//
//  Created by Giap on 13/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    //MARK: - BODY
    var body: some View {
        FooterView()
            .padding(.horizontal)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
