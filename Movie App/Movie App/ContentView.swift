//
//  ContentView.swift
//  Movie App
//
//  Created by Max will on 8/24/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(myMovies){ movie in
                    NavigationLink {
                        MovieInfo(ourMovie: movie)
                    } label: {
                        RowView(movie: movie.movieName)
                    }

                   
                }
            }
            .navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

