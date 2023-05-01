//
//  HomeView.swift
//  Netflix Clone
//
//  Created by MEI on 01.05.2023.
//

import SwiftUI

struct HomeView: View {
    
    var vm = HomeVM()
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            // main vstack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(vm.categories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMovie(category: category)) { movie in
                                        StandartHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(Color.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
