//
//  StatusModels.swift
//  MarvelHeros
//
//  Created by Rubén Pulido Marchal on 28/3/23.
//

import Foundation


enum Status {
    case none, loading, loaded, error(error: String)
}
