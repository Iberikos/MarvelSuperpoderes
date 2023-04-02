//
//  ViewModelHeros.swift
//  MarvelHeros
//
//  Created by Rubén Pulido Marchal on 28/3/23.
//

import Foundation
import Combine

final class viewModelHeros: ObservableObject {
    @Published var heros: [Heros]?
    @Published var status = Status.none
    
    var suscriptors = Set<AnyCancellable>()
    
    init(design:Bool = false){
        if (design){
            getHerosTesting()
        } else{
            getHeros(filtro: "")
        }
    }
    
    func getHeros (filtro: String){
        
        URLSession.shared
            .dataTaskPublisher(for: BaseNetwork().getSessionHeros(filter: filtro))
            .tryMap{
                guard let response = $0.response as? HTTPURLResponse,
                      response.statusCode == 200 else{
                    throw URLError(.badServerResponse)
                }
                return $0.data
            }
            .decode(type: [Heros].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion{
                case .failure:
                    self.status = Status.error(error: "Error buscando heroes")
                case . finished:
                    self.status = .loaded
                }
            } receiveValue: { data in
                self.heros = data
            }
            .store(in: &suscriptors)

    }
    
    func getHerosTesting(){
        let hero1 = Heros(id:UUID(), name: "3-D Man", idPhoto: "http://i.annihil.us/u/prod/marvel/i/mg/c/e0/535fecbbb9784.jpg")
        let hero2 = Heros(id:UUID(), name: "Aaron Stack", idPhoto: "http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg")
        let hero3 = Heros(id:UUID(), name: "Aero (Aero)", idPhoto: "http://i.annihil.us/u/prod/marvel/i/mg/b/40/image_not_available.jpg")
        
        self.heros = [hero1, hero2, hero3]
    }
}
