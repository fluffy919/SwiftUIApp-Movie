//
//  PaginatedResponse.swift
//  MovieSwift
//
//  Created by David S on 06/06/2019.
//  Copyright © 2019 David S. All rights reserved.
//

import Foundation

struct PaginatedResponse<T: Codable>: Codable {
    let page: Int?
    let total_results: Int?
    let total_pages: Int?
    let results: [T]
}
