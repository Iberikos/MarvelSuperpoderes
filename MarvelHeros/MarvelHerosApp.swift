//
//  MarvelHerosApp.swift
//  MarvelHeros
//
//  Created by Rubén Pulido Marchal on 28/3/23.
//

import SwiftUI

@main
struct MarvelHerosApp: App {
    
    @StateObject var rootViewModel = RootViewModel()
    
    var body: some Scene {
        WindowGroup {
            
            InicioView()
                .environmentObject(rootViewModel)
                
        }
    }
}
