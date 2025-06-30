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
    
    func purchase(_ product : Product) async {
        do{
            let result = try await product.purchase()
            
            switch result{
            // purchase successful, but now we need to verify receipt and transaction
            case .success(let verfifcationResult):
                switch verfifcationResult{
                case .unverified(let signedType, let verificationError):
                    print("Error on \(signedType): \(verificationError)")
                case .verified(let signedType):
                    purchased.insert(signedType.productID)
                    
                    await signedType.finish()
                }
                
                
            // User Cancelled or parent disapproved child's purchase request
            case .userCancelled:
                break
            // Waiting for some sort of approval
            case .pending:
                break
            
            @unknown default:
                break
            }
            
        }catch{
            print("Unable to purchase product:\(error)")
        }
    }
    
    
    // Check for purchase products
    private func checkPurchased() async {
        for product in products{
            guard let status = await product.currentEntitlement else {continue}
            
            switch status  {
            case .unverified(let signedType, let verificationError):
                print("Error on \(signedType): \(verificationError)")
            
            case .verified(let signedType):
                if signedType.revocationDate == nil {
                    purchased.insert(signedType.productID)
                } else{
                    purchased.remove(signedType.productID)
                }
            }
        }
    }
    
    // Connect with App store to watch for purchase and transaction updates
    private func watchForUpdates() -> Task <Void, Never> {
        Task(priority: .background) {
            for await _ in Transaction.updates {
                await checkPurchased()
            }
        }
        
    }
    
    
}
