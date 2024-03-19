//
//  ListingItemView.swift
//  iOS Project IITU
//
//  Created by Diyor Khabibullayev on 17.03.2024.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 8) {
            // images
          ListingImageCarouselView()
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            HStack(alignment: .top) {
                //deatails
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 ml away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4) {
                        Text("$567").fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                //rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    
                    Text("4.86")
                        .foregroundStyle(.black)
                }
                
            }
            .font(.footnote)
            
        }.padding()
    }
}

#Preview {
    ListingItemView()
}
