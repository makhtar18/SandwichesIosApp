//
//  SandwichStore.swift
//  Sandwiches
//
//  Created by Mehvish Akhtar on 26/04/23.
//

import Foundation

class SandwichStore: ObservableObject {
    @Published var sandwiches: [Sandwich]
    init(sandwiches: [Sandwich] = []) {
        self.sandwiches = sandwiches
    }
}
let testStore = SandwichStore(sandwiches: testData)
