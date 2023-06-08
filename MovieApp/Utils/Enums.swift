//
//  Enums.swift
//  MovieApp
//
//  Created by Eda on 02.06.2023.
//

import UIKit

// MARK: - Remote Config Enum
enum RemoteConfigKey: String {
    case labelText = "label_text"
}

// MARK: - Montserrat Font Enum
enum FuturaFont: String {
    case italic = "Futura-Medium-Italic"
    case medium = "Futura-Medium"
    case bold = "Futura-Bold"
    case condensedExtraBold = "Futura-CondensedExtraBold"
    case condesedMedium = "Futura-CondensedMedium"
   
    
    func of(size: CGFloat) -> UIFont? {
        return UIFont(name: rawValue, size: size)
    }
}
