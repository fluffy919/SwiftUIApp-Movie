//
//  OffsetTop.swift
//  MovieSwift
//
//  Created by David S on 30/08/2019.
//  Copyright © 2019 David S. All rights reserved.
//

import SwiftUI

public struct OffsetTopPreferenceKey: PreferenceKey {
    static public var defaultValue: CGFloat = 0
    public typealias Value = CGFloat
    
    static public func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
