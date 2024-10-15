//
//  LogoView.swift
//  Touchdown
//
//  Created by diseso software on 15.10.2024.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack (spacing: 4){
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
                 
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 13, height: 13, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    LogoView()
        .previewLayout(.sizeThatFits)
        .padding()
    
}
