//
//  HomeView.swift
//  CineBase
//
//  Created by Maciej Sołoducha on 25/08/2025.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)
            ScrollView(.vertical) {
                HStack {
                    Text("Action")
                        .font(.title)
                        .bold()
                    Spacer()
                }
                .padding(.horizontal)
                ScrollView(.horizontal) {
                            HStack {
                                ForEach(1..<21) { number in
                                    Text("Movie \(number)")
                                        .padding()
                                        .frame(width: 100, height: 150)
                                        .background(Color.gray.opacity(0.3))
                                        .cornerRadius(10)
                                }
                            }
                            .padding(.horizontal)
                        }
                .scrollIndicators(.hidden)
                Spacer()
            }
            
        }
    }
}

#Preview {
    HomeView()
}
