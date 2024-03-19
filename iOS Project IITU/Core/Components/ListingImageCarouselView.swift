//
//  ListingImageCarouselView.swift
//  iOS Project IITU
//
//  Created by Diyor Khabibullayev on 19.03.2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self ) {
                image in Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
        
    }
}

#Preview {
    ListingImageCarouselView()
}
