//
//  Firebase+Extensions.swift
//  MovieApp
//
//  Created by Eda on 02.06.2023.
//

import FirebaseRemoteConfig

//MARK: - Remote Config
extension RemoteConfig {
    func configValue(forKey remoteConfigKey: RemoteConfigKey) -> RemoteConfigValue {
        return configValue(forKey: remoteConfigKey.rawValue)
    }
}

