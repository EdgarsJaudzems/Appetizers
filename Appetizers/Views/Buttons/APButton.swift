//
//  APButton.swift
//  Appetizers
//
//  Created by edgars.jaudzems on 04/10/2023.
//

import SwiftUI

struct APButton: View {
    
    // LocalizedStringKey - to get specifier %.2f
    // Otherwise it should be - String
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimaryColor)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Test Title")
}
