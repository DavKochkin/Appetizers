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
    @Published var isLoading = false 
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
//    func getAppetizers() {
//        isLoading = true
//        NetworkManager.shared.getAppetizers { result in
//            DispatchQueue.main.async { [self] in
//                isLoading = false
//                switch result {
//                case .success(let appetizers):
//                    self.appetizers = appetizers
//                    
//                case .failure(let error):
//                    switch error {
//                    case .invalidResponse:
//                        alertItem = AlertContex.invalidResponse
//                        
//                    case .invalidURL:
//                        alertItem = AlertContex.invalidURL
//                        
//                    case .invalidData:
//                        alertItem = AlertContex.invalidData
//                        
//                    case .unableToComplete:
//                        alertItem = AlertContex.unableComplete
//                    }
//                }
//            }
//        }
//    }
    
    func getAppetizers() {
        isLoading = true

    }
}
