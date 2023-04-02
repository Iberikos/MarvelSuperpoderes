//
//  HeroesView.swift
//  MarvelHeros
//
//  Created by Rubén Pulido Marchal on 31/3/23.
//

import SwiftUI

struct HeroesView: View {
    @StateObject var viewModel: viewModelHeros
    @State private var filter = ""
    
    var body: some View {
        NavigationStack{
            List{
                if let heros = viewModel.heros{
                    ForEach(heros) { hero in
                        NavigationLink {
                            //Destino
                        } label: {
                            Text("\(hero.name)")
                        }

                    }
                }
            }
        }
    }
}

struct HeroesView_Previews: PreviewProvider {
    static var previews: some View {
        HeroesView(viewModel: viewModelHeros(design: true)) /// posible test
    }
}
