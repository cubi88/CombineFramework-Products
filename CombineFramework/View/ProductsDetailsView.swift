//
//  UserDetailsView.swift
//  CombineFramework
//
//  Created by Tsvetelina Cholakova on 27/06/2023.
//

import SwiftUI

struct ProductsDetailsView: View {
    @StateObject var viewModel: ProductsViewModel = ProductsViewModel(networkManager: NetworkManager())
    
    var body: some View {
        NavigationView{
            VStack {
                List(viewModel.productData){  user in
                    VStack{
                        Text("Details:").padding(1)
                        Text("Brand: \(user.brand), Category: \(user.category), Post Price: £ \(user.price) ")
                            .padding()
                    }
                }
                
            }.onAppear{
                viewModel.getProductsListData(urlString: ProductEndpoint.productsAPIEndpoint)
            }
        }
        .padding()
    }
}

struct UserDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsDetailsView()
    }
}

