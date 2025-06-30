//
//  Store.swift
//  HPTrivia
//
//  Created by Vaibhav kulkarni on 30/06/25.
//

import StoreKit

@MainActor
@Observable

class Store {
    var products: [Product] = []
    var purchased = Set<String>()
    
    private var updates: Task<Void, Never>? = nil
    
    // Load availble products
    func loadProucts() async {
        do{
            products = try await Product.products(for: ["hp4","hp5","hp6","hp7"])
            products.sort{
                $0.displayName < $1.displayName
            }
        }catch{
            print("Unable to load products:\(error)")
        }
    }
    
    // Purchase a product
    
    
    // Check for purchase products
    
    
    // Connect with App store to watch for purchase and transaction updates
}
