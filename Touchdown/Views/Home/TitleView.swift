//
//  TitleView.swift
//  Touchdown
//
//  Created by diseso software on 16.10.2024.
//

import SwiftUI

struct TitleView: View {
    
    var title : String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 5)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "Helmet")
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
