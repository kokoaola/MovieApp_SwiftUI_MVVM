//
//  MovieListView.swift
//  Movies
//
//  Created by koala panda on 2023/12/02.
//

import SwiftUI

struct MovieListView: View {
    let movies: [MovieViewModel]
    
    var body: some View {
        List(self.movies, id: \.imdbId){movie in
            NavigationLink(destination: MovieDetailScreen(imdbId: movie.imdbId)) {
                MovieCell(movie: movie)
            }
        }
    }
}

//struct MovieListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieListView()
//    }
//}

struct MovieCell: View {
    let movie: MovieViewModel
    
    var body: some View {
        HStack(alignment: .top) {
            URLImage(url: movie.poster)
                .frame(width: 100, height: 120)
                .cornerRadius(6)
            VStack(alignment: .leading) {
                Text(movie.title)
                    .font(.headline)
                
                Text(movie.year)
                    .opacity(0.5)
                    .padding(.top, 10)
            }.padding(5)
            Spacer()
        }.contentShape(Rectangle())
    }
}
