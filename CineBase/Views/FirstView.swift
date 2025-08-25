//
//  ContentView.swift
//  CineBase
//
//  Created by Maciej Sołoducha on 25/08/2025.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            InCinemaView()
                .tabItem {
                    Label("In Cinema", systemImage: "movieclapper.fill")
                }
            
            UpcomingView()
                .tabItem {
                    Label("Upcoming", systemImage: "calendar.badge.clock")
                }
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "bookmark")
                }
        }
    }
}


#Preview {
    FirstView()
}
