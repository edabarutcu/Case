//
//  MovieDetailModel.swift
//  MovieApp
//
//  Created by Eda on 04.06.2023.
//

import Foundation

//MARK: - MovieDetailResults
struct MovieDetailResult: Codable {
    let title, genre, actors, plot, country, language, poster: String
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case genre = "Genre"
        case actors = "Actors"
        case plot = "Plot"
        case country = "Country"
        case language = "Language"
        case poster = "Poster"
    }
    
    init() {
        title = .init()
        genre = .init()
        actors = .init()
        plot = .init()
        country = .init()
        language = .init()
        poster = .init()
    }
}
