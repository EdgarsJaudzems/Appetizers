//
//  OrderView.swift
//  Appetizers
//
//  Created by edgars.jaudzems on 03/10/2023.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order placed")
                    } label: {
                        APButton(title: "99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                    
                }
                
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order list.\nPlease add some items.")
                }
            }
            .navigationTitle("🏷️ Orders")
        }
    }
    
    func deleteItems(at offfsets: IndexSet) {
        orderItems.remove(atOffsets: offfsets)
    }
}

#Preview {
    OrderView()
}
