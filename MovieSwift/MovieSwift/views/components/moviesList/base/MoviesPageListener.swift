//
//  MoviesPageListener.swift
//  MovieSwift
//
//  Created by David S on 09/07/2019.
//  Copyright © 2019 David S. All rights reserved.
//

import Foundation

class MoviesPagesListener {
    var currentPage: Int = 1 {
        didSet {
            loadPage()
        }
    }
    
    func loadPage() {
        
    }
}
