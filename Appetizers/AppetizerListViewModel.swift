//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by David Kochkin on 07.10.2023.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async { [self] in
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        alertItem = AlertContex.invalidResponse
                        
                    case .invalidURL:
                        alertItem = AlertContex.invalidURL
                        
                    case .invalidData:
                        alertItem = AlertContex.invalidData
                        
                    case .unableToComplete:
                        alertItem = AlertContex.unableComplete
                    }
                }
            }
        }
    }
}
