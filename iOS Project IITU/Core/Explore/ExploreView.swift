//
//  ExploreView.swift
//  iOS Project IITU
//
//  Created by Diyor Khabibullayev on 17.03.2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            VStack{
                SearchAndFilterBar()
                
                ScrollView {
                    LazyVStack(spacing: 32) {
                        ForEach(0 ... 10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                            }
                        }
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    Text("Coming soon...")
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
