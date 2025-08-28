//
//  RowView.swift
//  CineBase
//
//  Created by Maciej Sołoducha on 28/08/2025.
//

import SwiftUI

struct RowView: View {
    var body: some View {
        HStack {
            Image("TestPoster")
                .resizable()
                .frame(width: 78, height: 115)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text("F1: The Movie")
                    .font(.title3)
                    .bold()
                Text("F1: The Movie")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("8.7")
                        .font(.callout)
                }
                Text("2021")
                    .font(.subheadline)
                Text("Genere: Action")
                    .font(.caption)
                    
            }
            .padding(.vertical, 6)
            .padding(.horizontal, 12)
        }
    }
}

#Preview {
    RowView()
}
