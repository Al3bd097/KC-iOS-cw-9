//
//  MovieInfo.swift
//  Movie App
//
//  Created by Max will on 8/24/22.
//

import SwiftUI

struct MovieInfo: View {
    var ourMovie: MovieModel
    var body: some View {
        ZStack {
            Color.black.opacity(0.8)
                .ignoresSafeArea()
            Image(ourMovie.movieName)
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 10)
            VStack{
                Image(ourMovie.movieName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 250, height: 250)
                
                Text(ourMovie.movieName)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                ScrollView(.horizontal){
                    HStack{
                        ForEach(ourMovie.movieAct, id: \.self){ act in
                            VStack{
                                Text(act)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .font(.title)
                                Image(act)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 200)
                            }
                            
                        }
                    }
                    
                }.frame(width: 400, height: 400)
            }
        }
    }
}

struct MovieInfo_Previews: PreviewProvider {
    static var previews: some View {
        MovieInfo(ourMovie: MovieModel(movieName: "", movieAct: [""]))
    }
}
