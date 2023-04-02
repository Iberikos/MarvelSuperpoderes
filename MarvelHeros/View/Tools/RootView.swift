//
//  RootView.swift
//  MarvelHeros
//
//  Created by Rubén Pulido Marchal on 31/3/23.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var rootviewModel: RootViewModel
    
    var body: some View {
        switch rootviewModel.status{
        case .none:
            InicioView()
        case .loaded:
            HomeView()
        case .error(error: let errorString):
            Text("Error-> \(errorString)")
        case .loading:
            LoaderView()
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(RootViewModel())
    }
}
