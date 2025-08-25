//
//  UpcomingView.swift
//  CineBase
//
//  Created by Maciej Sołoducha on 25/08/2025.
//

import SwiftUI

struct UpcomingView: View {
    
    let items = ["Movie 1", "Movie 2", "Movie 3"]
    
    var body: some View {
        NavigationStack {
            List(items, id: \.self) { item in
                Text(item)
            }
            .listStyle(.inset)
            .navigationTitle("Upcoming")
        }
    }
}

#Preview {
    UpcomingView()
}
