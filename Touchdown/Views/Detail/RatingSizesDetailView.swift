//
//  RatingSizesDetailView.swift
//  Touchdown
//
//  Created by diseso software on 17.10.2024.
//

import SwiftUI

struct RatingSizesDetailView: View {
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    var body: some View {
        HStack(alignment: .top, spacing: 3 , content: {
            
            VStack(alignment: .leading, spacing: 3, content: {
                /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id:\.self) {item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            })
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3 ,content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) {size in
                        Button(action: {
                       
                        }, label: {
                                Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5).stroke(colorGray, lineWidth: 2)
                                )
                        })
                    }
                })
            })
            
        })
    }
}

#Preview {
    RatingSizesDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
}
