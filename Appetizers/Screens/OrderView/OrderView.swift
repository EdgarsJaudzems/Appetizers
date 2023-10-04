//
//  OrderView.swift
//  Appetizers
//
//  Created by edgars.jaudzems on 03/10/2023.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(MockData.orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                }
                .listStyle(PlainListStyle())
                
                Button {
                    print("Order placed")
                } label: {
                     APButton(title: "99.99 - Place Order")
                }
                .padding(.bottom, 25)
             
            }
            .navigationTitle("🏷️ Orders")
        }
    }
}

#Preview {
    OrderView()
}
