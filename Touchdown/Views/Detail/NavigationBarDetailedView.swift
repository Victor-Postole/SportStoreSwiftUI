//
//  NavigationBarDetailedView.swift
//  Touchdown
//
//  Created by diseso software on 17.10.2024.
//

import SwiftUI

struct NavigationBarDetailedView: View {

    @EnvironmentObject var shop : Shop
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }

        }
    }
}

#Preview {
    NavigationBarDetailedView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorGray)
}
