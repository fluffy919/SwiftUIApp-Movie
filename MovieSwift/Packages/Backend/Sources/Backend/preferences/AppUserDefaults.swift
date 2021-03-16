//
//  UserDefaults.swift
//  MovieSwift
//
//  Created by David S on 25/06/2019.
//  Copyright © 2019 David S. All rights reserved.
//

import Foundation

public struct AppUserDefaults {
    @UserDefault("user_region", defaultValue: Locale.current.regionCode ?? "US")
    public static var region: String
        
    @UserDefault("original_title", defaultValue: false)
    public static var alwaysOriginalTitle: Bool
}
