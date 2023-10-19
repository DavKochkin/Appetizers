//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by David Kochkin on 17.10.2023.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    func saveChanges() {
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContex.userSaveSuccess
        } catch {
            alertItem = AlertContex.invalidUserData 
        }
    }
    
    func retrieveUser() {
        
    }
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContex.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            alertItem = AlertContex.invalidEmail
            return false
        }
        
        return true
    }
}
