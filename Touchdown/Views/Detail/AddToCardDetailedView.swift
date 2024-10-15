//
//  AddToCardDetailedView.swift
//  Touchdown
//
//  Created by diseso software on 17.10.2024.
//

import SwiftUI

struct AddToCardDetailedView: View {
    
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            
            Spacer()
            
            Text("Add to cart.".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
 
        }   .padding(15)
            .background(
                Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
            )
            .clipShape(Capsule())
    }
}

#Preview {
    AddToCardDetailedView()
        .previewLayout(.sizeThatFits)
        .environmentObject(Shop())
        .padding()
}
