//
//  MoviesSelectedMenuStore.swift
//  MovieSwift
//
//  Created by David S on 22/07/2019.
//  Copyright © 2019 David S. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

final class MoviesSelectedMenuStore: ObservableObject {
    let pageListener: MoviesMenuListPageListener
    
    @Published var menu: MoviesMenu {
        didSet {
            pageListener.menu = menu
        }
    }
        
    init(selectedMenu: MoviesMenu) {
        self.menu = selectedMenu
        self.pageListener = MoviesMenuListPageListener(menu: selectedMenu)
    }
}
