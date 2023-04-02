//
//  Inicio.swift
//  MarvelHeros
//
//  Created by Rubén Pulido Marchal on 29/3/23.
//

import SwiftUI

struct InicioView: View {
    
    @EnvironmentObject var rootviewModel: RootViewModel
    
    var body: some View {
        ZStack {
                //Imagen fondo
                Image (decorative: "Fondo_claro")
                    .resizable()
                    .opacity(1)
                
                Image (decorative: "")
                    .resizable()
                    .background(.black)
                    .opacity(0.1)
            
            VStack{
                
                Image(decorative: "Marvel_Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .padding(.top)
                
                
                VStack{
                    Button {
                        rootviewModel.login()
                    } label: {
                        Text ("Welcome")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 200, height: 50)
                            .background(.red)
                            .cornerRadius(20)
                    }
                    .padding(.top, 500)
                }
                
            }
        }
        .ignoresSafeArea()
    }
}

struct Inicio_Previews: PreviewProvider {
    static var previews: some View {
        InicioView()
            .environmentObject(RootViewModel())
    }
}
