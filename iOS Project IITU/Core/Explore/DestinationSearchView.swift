//
//  DestinationSearchView.swift
//  iOS Project IITU
//
//  Created by Diyor Khabibullayev on 21.03.2024.
//

import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    var body: some View {
        VStack {
            Button{
                withAnimation(.snappy) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            Text("Where to?")
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}
