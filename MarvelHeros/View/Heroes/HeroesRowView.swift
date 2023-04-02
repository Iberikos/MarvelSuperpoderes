//
//  HeroesRowView.swift
//  MarvelHeros
//
//  Created by Rubén Pulido Marchal on 2/4/23.
//

import SwiftUI

struct HeroesRowView: View {
    var hero: Heros
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: hero.idPhoto)) { Image in
                Image
            } placeholder: {
                Text("cargando foto...")
            }

        }
    }
}///

struct HeroesRowView_Previews: PreviewProvider {
    static var previews: some View {
        HeroesRowView(hero: Heros(id:UUID(), name: "3-D Man", idPhoto: "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784.jpg"))
    }
}
