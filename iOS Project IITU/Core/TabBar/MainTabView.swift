//
//  MainTabView.swift
//  iOS Project IITU
//
//  Created by Diyor Khabibullayev on 21.03.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            ExploreView()
                .tabItem { Label("Whishlists", systemImage: "heart") }
            //WhishListView()
            
            ExploreView()
                .tabItem { Label("Profile", systemImage: "person") }
            //ProfileView()
        }
    }
}

#Preview {
    MainTabView()
}
