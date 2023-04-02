//
//  Network.swift
//  MarvelHeros
//
//  Created by Rubén Pulido Marchal on 28/3/23.
//

import Foundation

let server = "http://gateway.marvel.com"
let apikey = "4f399ebce315eae77ce2ea2e36cab4c6"
let ts = "1"
let hash = "0b77681821fa52dc35272564cbcb84a0"

struct HTTPMethods {
    static let post = "POST"
    static let get = "GET"
    static let put = "PUT"
    static let delete = "DELETE"
    static let content = "application/json"
}

enum endpoints : String {
    case herosList = "/v1/public/characters"
    case heroSeries = ""
}
struct BaseNetwork{
    //Lista de heroes
    func getSessionHeros(filter:String) -> URLRequest{
        let urlcad : String = "\(server)\(endpoints.herosList.rawValue)?apikey=\(apikey)&ts=\(ts)&hash=\(hash)"
        var request : URLRequest = URLRequest(url: URL(string: urlcad)!)
        request.httpMethod = HTTPMethods.post

        request.httpBody = try? JSONEncoder().encode(HerosFilter(name: filter))
        request.addValue(HTTPMethods.content, forHTTPHeaderField: "Content-type")
        
        return request
    }
}


