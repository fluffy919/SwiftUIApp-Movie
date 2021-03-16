//
//  MoviesHomeListPageListener.swift
//  MovieSwift
//
//  Created by David S on 22/07/2019.
//  Copyright © 2019 David S. All rights reserved.
//

import Foundation

final class MoviesMenuListPageListener: MoviesPagesListener {
    var menu: MoviesMenu {
        didSet {
            currentPage = 1
        }
    }
    
    override func loadPage() {
        store.dispatch(action: MoviesActions.FetchMoviesMenuList(list: menu, page: currentPage))
    }
    
    init(menu: MoviesMenu, loadOnInit: Bool? = true) {
        self.menu = menu
        
        super.init()
        
        if loadOnInit == true {
            loadPage()
        }
    }
}
