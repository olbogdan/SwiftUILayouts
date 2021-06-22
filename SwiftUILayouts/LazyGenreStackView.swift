//
//  LazyGenreStackView.swift
//  SwiftUILayouts
//
//  Created by bogdanov on 22.06.21.
//

import SwiftUI

struct LazyGenreStackView: View {
    @State private var selectedGenre = Genre.list.first

    var body: some View {
        NavigationView {
            ScrollView {
                ScrollViewReader { proxy in
                    ForEach(Genre.list) { genre in
                        Subgenres(genre: genre)
                            .id(genre)
                    }
                    .onChange(of: selectedGenre) { genre in
                        withAnimation {
                            proxy.scrollTo(genre, anchor: .top)
                        }
                        selectedGenre = nil
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Menu("Genre") {
                        ForEach(Genre.list) { genre in
                            Button(genre.name) {
                                selectedGenre = genre
                            }
                        }
                    }
                }
            }
        }
    }
}

struct Subgenres: View {
    let genre: Genre
    private let horizontalPadding: CGFloat = 40

    var body: some View {
        Section(header: genre.header
            ) {
            VStack(alignment: .leading) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 20) {
                        ForEach(genre.subgenres, content: \.view)
                    }.padding(.leading, horizontalPadding)
                }
            }
        }
    }
}

private extension Genre {
    var header: some SwiftUI.View {
        HStack {
            Text(name)
                .font(.title2)
                .padding(.leading)
                .padding(.vertical, 8)
            Spacer()
        }
    }
}

private extension Genre.Subgenre {
    var view: some View {
        RoundedRectangle(cornerRadius: 8)
            .fill(
                LinearGradient(
                    gradient: .init(
                        colors: AnyIterator {}.prefix(2).map {
                            .random(saturation: 2 / 3, value: 0.85)
                        }
                    ),
                    startPoint: .topLeading, endPoint: .bottomTrailing
                )
            )
            .frame(width: 125, height: 125)
            .overlay(
                Image("\(Int.random(in: 1 ... 92))")
                    .resizable()
                    .saturation(0)
                    .blendMode(.multiply)
                    .scaledToFit()
            )
            .overlay(
                Text(name)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(10)
                    .frame(alignment: .bottomLeading),
                alignment: .bottomLeading
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LazyGenreStackView()
    }
}
