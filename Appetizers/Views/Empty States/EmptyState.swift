//
//  EmptyState.swift
//  Appetizers
//
//  Created by edgars.jaudzems on 04/10/2023.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
        }
        .offset(y: -50)
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "Test message")
}
