//
//  SearchMovieModel.swift
//  MovieApp
//
//  Created by Eda on 04.06.2023.
//

import Foundation

//MARK: - MovieResult
struct MovieResult: Decodable {
    let search: [Search]
    
    enum CodingKeys: String, CodingKey {
        case search = "Search"
    }
}

//MARK: - Search
struct Search: Decodable {
    let title, year, imdbID, type, poster: String

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case type = "Type"
        case poster = "Poster"
    }
}
