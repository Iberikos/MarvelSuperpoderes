//
//  HomeView.swift
//  MarvelHeros
//
//  Created by Rubén Pulido Marchal on 31/3/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            HeroesView(viewModel: viewModelHeros())
                .tabItem {
                    Image(systemName: "house")
                    Text("Inicio")
                }
            Text("Inicio")
                .tabItem {
                    Image(systemName: "figure.strengthtraining.traditional")
                    Text("Heroes")
                }
            Text("Config")
                .tabItem {
                    Image(systemName: "ellipsis.circle")
                    Text("Configuracion")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
