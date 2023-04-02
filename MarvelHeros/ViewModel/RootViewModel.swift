//
//  RootViewModel.swift
//  MarvelHeros
//
//  Created by Rubén Pulido Marchal on 30/3/23.
//

import Foundation
import Combine

final class RootViewModel: ObservableObject {
    @Published var status = Status.none   // Estado del login
 
    func login(){
        self.status = Status.loading
    }
}
