//
//  ContentView.swift
//  CombineFramework
//
//  Created by Tsvetelina Cholakova on 27/06/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ProductsViewModel = ProductsViewModel(networkManager: NetworkManager())
    
    var body: some View {
        NavigationView{
            VStack {
                List(viewModel.productData){  user in
                    NavigationLink(destination: ProductsDetailsView()){
                        Text("Title: \(user.title), ID: \(user.id) ")
                            .padding()
                    }
                }.onAppear{
                    viewModel.getProductsListData(urlString: ProductEndpoint.productsAPIEndpoint)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
