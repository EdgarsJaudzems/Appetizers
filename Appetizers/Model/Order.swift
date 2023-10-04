//
//  Order.swift
//  Appetizers
//
//  Created by edgars.jaudzems on 04/10/2023.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price}
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItems(at offfsets: IndexSet) {
        items.remove(atOffsets: offfsets)
    }
}

