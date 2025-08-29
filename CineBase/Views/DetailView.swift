//
//  DetailView.swift
//  CineBase
//
//  Created by Maciej Sołoducha on 29/08/2025.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("TestPosterBG") // wrzuć swoją nazwę obrazka
                    .resizable()
                    .scaledToFit()
                    .mask(
                        LinearGradient(
                            gradient: Gradient(stops: [
                                .init(color: .black, location: 0.0),   // góra obrazka w pełni widoczna
                                .init(color: .secondary, location: 0.7),   // jeszcze widoczny
                                .init(color: .clear, location: 0.9)    // dół przeźroczysty
                            ]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .edgesIgnoringSafeArea(.all)
                Spacer()
            }
            VStack(alignment: .leading) {
                HStack {
                    Image("TestPoster")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 150)
                        .cornerRadius(10)
                        .padding(.vertical)
                        
                        
                    VStack(alignment: .leading) {
                        Text("F1: The Movie")
                            .font(.title2)
                            .bold()
                        Text("F1: The Movie")
                            .font(.callout)
                            .foregroundStyle(.secondary)
                            .padding(.bottom, 2)
                        Text("Action | 2025 | 120 min")
                            .padding(.bottom, 2)
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                .font(.title3)
                            Text("8.7")
                                .font(.title3)
                        }
                            
                        
                    }
                    Spacer()
                }
                Text("Go beyond the racetrack to explore behind-the-scenes footage and in-depth interviews with cast and filmmakers. Discover how Brad Pitt and Damson Idris trained to become racing drivers and how the film’s most technically challenging crash scene was filmed. Get a front-row look at what it takes to shoot at some of the world’s most legendary racing circuits and more!")
                Button {
                    //
                } label: {
                    Text("Watch trailer")
                }
                .buttonStyle(.borderedProminent)
                .padding(.vertical)

                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 100)
            .padding(.bottom)
            
        }
        }
}

#Preview {
    DetailView()
}
