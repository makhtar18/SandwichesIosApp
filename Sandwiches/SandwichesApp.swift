//
//  SandwichesApp.swift
//  Sandwiches
//
//  Created by Mehvish Akhtar on 26/04/23.
//

import SwiftUI

@main
struct SandwichesApp: App {
    @StateObject private var store = SandwichStore();
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
