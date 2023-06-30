//
//  NetworkManager.swift
//  CombineFramework
//
//  Created by Tsvetelina Cholakova on 27/06/2023.
//

import Foundation
import Combine

protocol Networkable{
    func getDataFromAPI<T: Decodable>(url: URL, type:T.Type) -> AnyPublisher<T, Error>
}
class NetworkManager:Networkable{
    func getDataFromAPI<T>(url: URL, type: T.Type) -> AnyPublisher<T, Error> where T : Decodable {
        
        return URLSession.shared.dataTaskPublisher(for: url)  //Publisher
            .map{  //operator
                $0.data}
            .decode(type: T.self, decoder: JSONDecoder()) // decode the data
            .eraseToAnyPublisher()
    } 
}
