//
//  HeroModel.swift
//  MarvelHeros
//
//  Created by Rubén Pulido Marchal on 28/3/23.
//

import Foundation


struct Heros: Codable, Identifiable {
    let id: UUID
    let name: String
    let idPhoto: String //TODO
    var favorite: Bool?
}

struct HerosFilter: Codable{
    var name:String
}

