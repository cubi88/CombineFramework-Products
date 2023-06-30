//
//  UsersViewModel.swift
//  CombineFramework
//
//  Created by Tsvetelina Cholakova on 27/06/2023.
//

import Foundation
import Combine

class ProductsViewModel: ObservableObject{
    @Published var productData: [Product] = []
    var networkManager: Networkable
    
    private var cancelAPI = Set<AnyCancellable>()

    init(networkManager: Networkable){
        self.networkManager = networkManager
    }
    
    func getProductsListData(urlString: String){
        guard let url = URL(string: ProductEndpoint.productsAPIEndpoint) else {return}
        networkManager.getDataFromAPI(url: url, type: Welcome.self)
            .sink { completion in
                switch completion{
                case .finished:
                    print("Finished case")
                    break
                case .failure(let error):
                    print(error)
                }
            } receiveValue: { productData in
                DispatchQueue.main.async {
                    self.productData = productData.products
                }
            }.store(in: &cancelAPI)  //.sink .store - operators
    }
}
