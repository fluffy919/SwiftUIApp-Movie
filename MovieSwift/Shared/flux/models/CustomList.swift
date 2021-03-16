//
//  CustomList.swift
//  MovieSwift
//
//  Created by David S on 18/06/2019.
//  Copyright © 2019 David S. All rights reserved.
//

import Foundation
import SwiftUI

struct CustomList: Codable, Identifiable {
    let id: Int
    var name: String
    var cover: Int?
    var movies: Set<Int>
}
