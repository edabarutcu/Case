//
//  Connectivity.swift
//  MovieApp
//
//  Created by Eda on 03.06.2023.
//

import Foundation
import Alamofire

final class Connectivity {
    static var isConnectedToInternet: Bool {
            return NetworkReachabilityManager()!.isReachable
        }
}
