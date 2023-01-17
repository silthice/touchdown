//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Giap on 13/01/2023.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop()) //allow create view that rely on shared data, so can access properties of Shop class anywhere
        }
    }
}
