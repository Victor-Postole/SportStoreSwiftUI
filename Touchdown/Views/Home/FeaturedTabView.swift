//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by diseso software on 16.10.2024.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) {player in
                FeaturedItemView(player: player)
            }
                .padding(.horizontal, 15)
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        
    }
}

#Preview {
    FeaturedTabView()
        .previewLayout(.sizeThatFits)
        .background(Color.gray)
}
