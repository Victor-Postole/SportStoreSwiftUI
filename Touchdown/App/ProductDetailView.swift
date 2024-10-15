//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by diseso software on 17.10.2024.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            NavigationBarDetailedView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HeaderDetailView()
                .padding(.horizontal)
            
            TopPartDetailedView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0, content: {
                
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 20)
                
                ScrollView(.vertical, showsIndicators: false, content:  {
                    
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                QuanityFavroiteDetiledView()
                    .padding(.vertical, 10)
                

                AddToCardDetailedView()
                    .padding(.bottom, 20)
            }).padding(.horizontal)
                .background(Color.white.clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
            
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: shop.selectedProduct?.red ??  sampleProduct.red,  green: shop.selectedProduct?.green ?? sampleProduct.green, blue:shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
        .previewLayout(.fixed(width: 375, height: 812))
}
