//
//  QuanityFavroiteDetiledView.swift
//  Touchdown
//
//  Created by diseso software on 17.10.2024.
//

import SwiftUI

struct QuanityFavroiteDetiledView: View {
   
    @State private var counter : Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                    feedback.impactOccurred()
                }
                
                
                
            }, label: {
               Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 6)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                    feedback.impactOccurred()
                }
            }, label: {
               Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        })
        .font(.system( .title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

#Preview {
    QuanityFavroiteDetiledView()
        .previewLayout(.sizeThatFits)
        .padding()
}
