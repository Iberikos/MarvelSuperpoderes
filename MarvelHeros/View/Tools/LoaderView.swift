//
//  LoaderView.swift
//  MarvelHeros
//
//  Created by Rubén Pulido Marchal on 31/3/23.
//

import SwiftUI

struct LoaderView: View {
    @State private var animationAmount = 0.3
    @State private var animate = false
    
    var body: some View {
        VStack{
            Image(decorative: "Escudo")
                .resizable()
                .frame(width: 350, height: 300)
                .scaleEffect(animationAmount)
                .animation(.easeInOut(duration: 1).repeatForever(),
                           value: animationAmount)
                .onAppear{
                    animationAmount = 1
                }
            
            Text("Cargando...")
                .font(.title)
                .foregroundColor(.blue)
                .padding(.top, 100)
            
        }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView()
    }
}
