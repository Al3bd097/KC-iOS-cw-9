//
//  MovieModel.swift
//  Movie App
//
//  Created by Max will on 8/24/22.
//

import Foundation
struct MovieModel: Identifiable{
    let id = UUID()
    var movieName: String
    var movieAct: [String]
}
var myMovies = [
 MovieModel(movieName: "Gladiator", movieAct: ["Russell", "Joaquin Phoenix"]),
 MovieModel(movieName: "Ocean Eleven", movieAct: ["George Clooney", "Brad pitt"]),
 MovieModel(movieName: "Who am I", movieAct: ["Tom Schilling", "Stephan Kampwirth", " Hannah"]),
 MovieModel(movieName: "Mugen Train", movieAct: ["Natsuki Hanae", "Akira Ishida", "Akari Kitō"]),
 MovieModel(movieName: "Harry Potter", movieAct: ["Daniel Radcliffe", "Emma Watson", "Rupert Grint"])
]
