//
//  Review.swift
//  MovieSwift
//
//  Created by David S on 16/06/2019.
//  Copyright © 2019 David S. All rights reserved.
//

import Foundation
import SwiftUI

struct Review: Codable, Identifiable {
    let id: String
    let author: String
    let content: String
}
