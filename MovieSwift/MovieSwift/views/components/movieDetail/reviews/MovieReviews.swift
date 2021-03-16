//
//  MovieReviews.swift
//  MovieSwift
//
//  Created by David S on 16/06/2019.
//  Copyright © 2019 David S. All rights reserved.
//

import SwiftUI
import SwiftUIFlux

struct MovieReviews : View {
    @EnvironmentObject var store: Store<AppState>
    
    let movie: Int
    
    var reviews: [Review] {
        return store.state.moviesState.reviews[movie] ?? []
    }
        
    var body: some View {
        List(reviews) {review in
            ReviewRow(review: review)
        }
        .navigationBarTitle(Text("Reviews"))
        .onAppear{
            self.store.dispatch(action: MoviesActions.FetchMovieReviews(movie: self.movie))
        }
    }
}
