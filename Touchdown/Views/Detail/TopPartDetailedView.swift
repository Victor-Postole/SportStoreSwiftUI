//
//  TopPartDetailedView.swift
//  Touchdown
//
//  Created by diseso software on 17.10.2024.
//

import SwiftUI

struct TopPartDetailedView: View {
    
    @State private var isAnimating : Bool = false
    @EnvironmentObject var shop : Shop

    
    var body: some View {
        HStack (alignment: .center, spacing: 6, content: {

            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
                
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()

            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
                
            
        }).onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

#Preview {
    TopPartDetailedView()
        .previewLayout(.sizeThatFits)
        .environmentObject(Shop())
        .padding()
}
