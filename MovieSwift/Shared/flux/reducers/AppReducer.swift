//
//  AppReducer.swift
//  MovieSwift
//
//  Created by David S on 26/06/2019.
//  Copyright © 2019 David S. All rights reserved.
//

import Foundation
import SwiftUIFlux

func appStateReducer(state: AppState, action: Action) -> AppState {
    var state = state
    state.moviesState = moviesStateReducer(state: state.moviesState, action: action)
    state.peoplesState = peoplesStateReducer(state: state.peoplesState, action: action)
    return state
}
