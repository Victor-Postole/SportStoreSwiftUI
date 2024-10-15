//
//  ContentView.swift
//  Touchdown
//
//  Created by diseso software on 15.10.2024.


import SwiftUI

struct ContentView: View {
    
    //MARK: - VARIABLE
    @EnvironmentObject var shop : Shop
    
    
    var body: some View {
        ZStack {
            
            
            if shop.showingProduct == false && shop.selectedProduct == nil{
                VStack (spacing: 0){
                    
                    NavigationBarView()
                        .padding()
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.055), radius: 5, x: 0, y: 5)
                    
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                          
                            FeaturedTabView()
                                .frame(maxWidth: .infinity)  // Ensure it takes the full width of the parent
                                .frame(height: 300) // Adjust height as needed
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns:gridLayout, spacing: 15, content: {
                                ForEach(products){ item in
                                    
                                    ProductItemView(product: item)
                                        .onTapGesture {
                                            
                                            feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = item
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            })
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    })
                    
                    
                  
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
               ProductDetailView()
            }
        }.ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}

