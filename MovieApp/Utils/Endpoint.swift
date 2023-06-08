//
//  Endpoint.swift
//  MovieApp
//
//  Created by Eda on 02.06.2023.
//

import Foundation

enum Endpoint {
    enum Constant {
        static let baseURL = "http://www.omdbapi.com"
        static let apiKey = "d2ff2e04"
    }

    case movieSearchTitle(movieSearchTitle: String)
    case detailMovie(movieIMBID: String)
    
    var url: String {
        switch self {
        case .movieSearchTitle(let movieSearchTitle):
            return "\(Constant.baseURL)?s=\(movieSearchTitle)&apiKey=\(Constant.apiKey)"
        case .detailMovie(let movieIMBID):
            return "\(Constant.baseURL)?i=\(movieIMBID)&apikey=\(Constant.apiKey)"
        }
    }
}
